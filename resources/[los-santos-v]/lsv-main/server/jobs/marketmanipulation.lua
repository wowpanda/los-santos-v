local players = { }


RegisterServerEvent('lsv:marketManipulationFinished')
AddEventHandler('lsv:marketManipulationFinished', function()
	local player = source

	if not players[player] then
		TriggerClientEvent('lsv:marketManipulationFinished', player, false, 'Time is over.')
		return
	end

	local reward = Settings.marketManipulation.minReward +
		math.min(Settings.marketManipulation.maxReward - Settings.marketManipulation.minReward, players[player] * Settings.marketManipulation.cashPerRobbery)

	Db.UpdateCash(player, reward, function()
		TriggerClientEvent('lsv:marketManipulationFinished', player, true)
		players[player] = nil
	end)
end)


RegisterServerEvent('lsv:marketManipulationRobbed')
AddEventHandler('lsv:marketManipulationRobbed', function()
	local player = source

	if not players[player] then players[player] = 0 end

	players[player] = players[player] + 1
end)


AddEventHandler('lsv:playerDropped', function(player)
	players[player] = nil
end)