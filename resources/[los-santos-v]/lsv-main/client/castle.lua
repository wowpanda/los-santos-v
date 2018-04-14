local logger = Logger:CreateNamedLogger('Castle')

local castleData = nil


local function getPlayerPoints()
	if not castleData then
		logger:Error('Attempt to get player points from empty data')
		return nil
	end

	for i, v in pairs(castleData.players) do
		if v.id == Player.ServerId() then return v.points end
	end

	return 0
end


RegisterNetEvent('lsv:startCastle')
AddEventHandler('lsv:startCastle', function(placeIndex)
	local place = Settings.castle.places[placeIndex]

	castleData = { }
	castleData.place = place
	castleData.zoneBlip = Map.CreateRadiusBlip(place.x, place.y, place.z, Settings.castle.radius, Color.BlipPurple())

	castleData.blip = AddBlipForCoord(place.x, place.y, place.z)
	SetBlipSprite(castleData.blip, Blip.Castle())
	SetBlipColour(castleData.blip, Color.BlipPurple())
	SetBlipHighDetail(castleData.blip, true)

	if not JobWatcher.IsAnyJobInProgress() then
		FlashMinimapDisplay()
		Map.SetBlipFlashes(castleData.blip)
		PlaySoundFrontend(-1, 'MP_5_SECOND_TIMER', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
		Gui.DisplayNotification('Hold the Castle area by yourself to become the King and earn RP.')
	end

	castleData.startTime = GetGameTimer()
	castleData.players = { }
end)


RegisterNetEvent('lsv:updateCastlePlayers')
AddEventHandler('lsv:updateCastlePlayers', function(players)
	if not castleData then
		logger:Warning('Attempt to update players for empty data')
		return
	end

	castleData.players = players
end)


RegisterNetEvent('lsv:finishCastle')
AddEventHandler('lsv:finishCastle', function(winner)
	if castleData then
		RemoveBlip(castleData.blip)
		RemoveBlip(castleData.zoneBlip)
	end

	if not winner then
		castleData = nil
		Gui.DisplayNotification('King of the Castle has ended.')
		return
	end

	if JobWatcher.IsAnyJobInProgress() then
		castleData = nil
		FlashMinimapDisplay()
		Gui.DisplayNotification(Gui.GetPlayerName(winner, '~p~')..' won King of the Castle.')
		return
	end

	local isPlayerWinner = winner == Player.ServerId()

	if isPlayerWinner then PlaySoundFrontend(-1, 'Mission_Pass_Notify', 'DLC_HEISTS_GENERAL_FRONTEND_SOUNDS', true)
	elseif not IsPlayerDead(PlayerId()) then PlaySoundFrontend(-1, 'ScreenFlash', 'MissionFailedSounds', true) end

	local messageText = isPlayerWinner and 'You won King of the Castle with a score of '..getPlayerPoints() or Gui.GetPlayerName(winner, '~p~')..' became the King.'

	castleData = nil

	local scaleform = Scaleform:Request('MIDSIZED_MESSAGE')

	scaleform:Call('SHOW_SHARD_MIDSIZED_MESSAGE', isPlayerWinner and 'WINNER' or 'YOU LOSE', messageText, 21)
	scaleform:RenderFullscreenTimed(5000)

	scaleform:Delete()
end)


Citizen.CreateThread(function()
	local pointAddedLastTime = GetGameTimer()

	while true do
		Citizen.Wait(0)

		local isAnyJobInProgress = JobWatcher.IsAnyJobInProgress()

		if castleData then
			SetBlipAlpha(castleData.blip, isAnyJobInProgress and 0 or 255)
			SetBlipAlpha(castleData.zoneBlip, isAnyJobInProgress and 0 or 128)

			if not isAnyJobInProgress then
				Gui.DrawTimerBar(0.15, 'EVENT END', math.max(0, math.floor((Settings.castle.duration - GetGameTimer() + castleData.startTime) / 1000)))
				Gui.DrawBar(0.15, 'YOUR SCORE', getPlayerPoints(), nil , 2)

				if not Utils.IsTableEmpty(castleData.players) then
					Gui.DrawBar(0.15, GetPlayerName(GetPlayerFromServerId(castleData.players[1].id)), castleData.players[1].points, Color.GetHudFromBlipColor(Color.BlipYellow()), 3)
				end

				local playerX, playerY, playerZ = table.unpack(GetEntityCoords(PlayerPedId(), true))
				local isPlayerInCastleArea = GetDistanceBetweenCoords(playerX, playerY, playerZ, castleData.place.x, castleData.place.y, castleData.place.z, false) <= Settings.castle.radius

				Gui.DisplayObjectiveText(isPlayerInCastleArea and 'Defend the ~p~Castle area~w~.' or 'Enter the ~p~Castle area~w~ to become the King.')

				if isPlayerInCastleArea and not IsPlayerDead(PlayerId()) and GetTimeDifference(GetGameTimer(), pointAddedLastTime) >= 1000 then
					TriggerServerEvent('lsv:castleAddPoint')
					pointAddedLastTime = GetGameTimer()
				end
			end
		end
	end
end)