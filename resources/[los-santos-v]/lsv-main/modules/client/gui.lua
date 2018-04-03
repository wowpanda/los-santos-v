Gui = { }


function Gui.GetPlayerName(serverId, color, lowercase)
	local player = GetPlayerServerId(PlayerId())

	if player == serverId then
		if lowercase then
			return "you"
		else
			return "You"
		end
	else
		if not color then
			if Utils.Index(Player.crewMembers, serverId) then
				color = '~b~'
			else
				color = '~w~'
			end
		end


		return color..'<C>'..GetPlayerName(GetPlayerFromServerId(serverId))..'</C>~w~'
	end
end


function Gui.DisplayHelpText(text)
	if IsHelpMessageBeingDisplayed() then return end
	BeginTextCommandDisplayHelp("STRING")
	AddTextComponentScaleform(tostring(text))
	EndTextCommandDisplayHelp(0, 0, 1, -1)
end


function Gui.DisplayHelpTextThisFrame(text)
	BeginTextCommandDisplayHelp("STRING")
	AddTextComponentScaleform(tostring(text))
	EndTextCommandDisplayHelp(0, 0, 0, -1)
end


function Gui.DisplayNotification(text, pic, title, subtitle, icon)
	SetNotificationTextEntry("STRING")
	AddTextComponentSubstringPlayerName(tostring(text))

	if pic then
		SetNotificationMessage(pic, pic, false, icon or 4, title or "", subtitle or "")
	end

	DrawNotification(false, true)
end


function Gui.DrawRect(position, width, height, color)
	DrawRect(position.x, position.y, width, height, color.r, color.g, color.b, color.a)
end


function Gui.DrawText(text, position, font, color, scale, shadow, outline, center, rightJustify, width)
	SetTextFont(font)
	SetTextColour(color.r, color.g, color.b, color.a)
	SetTextScale(scale, scale)

	if shadow then
		SetTextDropshadow(8, 0, 0, 0, 255)
		SetTextDropShadow()
	end

	if outline then
		SetTextEdge(4, 0, 0, 0, 255)
		SetTextOutline()
	end

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringPlayerName(tostring(text))

	if center then
		SetTextCentre(true)
	elseif rightJustify then
		SetTextWrap(position.x - width, position.x)
		SetTextRightJustify(true)
	end

	EndTextCommandDisplayText(position.x, position.y)
end


function Gui.DisplayObjectiveText(text)
	BeginTextCommandPrint("STRING")
	AddTextComponentString(tostring(text))
	EndTextCommandPrint(1, true)
end


function Gui.DrawBar(width, text, subText, color, position)
	local barIndex = position or 1
	local rectHeight = 0.038
	local rectX = GetSafeZoneSize() - width + width / 2
	local rectY = GetSafeZoneSize() - rectHeight + rectHeight / 2 - (barIndex - 1) * (rectHeight + 0.005)
	local hTextMargin = 0.003
	local textFont = 0
	local textColor = color or Color.GetHudFromBlipColor(Color.BlipWhite())
	local textScale = 0.32
	local subTextScale = 0.5

	Streaming.RequestStreamedTextureDict("timerbars")

	DrawSprite("timerbars", "all_black_bg", rectX, rectY, width, rectHeight, 0, 0, 0, 0, 128)
	Gui.DrawText(text, { x = GetSafeZoneSize() - width + hTextMargin, y = rectY - 0.008 }, textFont, textColor, textScale)
	Gui.DrawText(subText, { x = GetSafeZoneSize() - hTextMargin, y = rectY - 0.0175 }, textFont, textColor, subTextScale, false, false, false, true, width / 2)
end


function Gui.DrawTimerBar(width, text, seconds, position)
	local textColor = seconds <= 10 and Color.GetHudFromBlipColor(Color.BlipRed()) or Color.GetHudFromBlipColor(Color.BlipWhite())
	Gui.DrawBar(width, text, string.format("%02.f", math.floor(seconds / 60))..':'..string.format("%02.f", math.floor(seconds % 60)), textColor, position)
end


function Gui.DrawPlaceMarker(x, y, z, radius, r, g, b, a)
	DrawMarker(1, x, y, z, 0, 0, 0, 0, 0, 0, radius, radius, radius, r, g, b, a, false, nil, nil, false)
end