Scoreboard = { }

-- Format: { id, name, cash, kdRatio, kills, deaths }
local scoreboard = { }

local function sortScoreboard(l, r)
	if not l then return false end
	if not r then return true end

	if l.cash > r.cash then return true end
	if l.cash < r.cash then return false end

	if not l.kdRatio then return false end
	if not r.kdRatio then return true end

	if l.kdRatio > r.kdRatio then return true end
	if l.kdRatio < r.kdRatio then return false end

	if l.kills > r.kills then return true end
	if l.kills < r.kills then return false end

	if l.deaths > r.deaths then return false end
	if l.deaths < r.deaths then return true end

	return l.name < r.name
end


local function calculateKdRatio(kills, deaths)
	if kills + deaths < Settings.kdRatioMinStat then
		return nil
	else
		return kills / deaths
	end
end


local function findPlayerIndex(player) -- TODO Use player server id as key
	for index, playerStats in ipairs(scoreboard) do
		if playerStats.id == player then return index end
	end

	return nil
end


local function updateScoreboard()
	table.sort(scoreboard, sortScoreboard)

	TriggerClientEvent('lsv:updateScoreboard', -1, scoreboard)
end


function Scoreboard.AddPlayer(player, playerStats)
	table.insert(scoreboard, { ['id'] = player, ['name'] = GetPlayerName(player), ['cash'] = playerStats.Cash,
		['kdRatio'] = calculateKdRatio(playerStats.Kills, playerStats.Deaths),
		['kills'] = playerStats.Kills, ['deaths'] = playerStats.Deaths, ['killstreak'] = 0 })

	updateScoreboard()
end


function Scoreboard.RemovePlayer(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	table.remove(scoreboard, playerIndex)

	updateScoreboard()
end


function Scoreboard.GetPlayersCount()
	return Utils.GetTableLength(scoreboard)
end


function Scoreboard.GetRandomPlayer()
	return scoreboard[math.random(Utils.GetTableLength(scoreboard))].id
end


function Scoreboard.GetPlayerCash(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	return scoreboard[playerIndex].cash
end


function Scoreboard.GetPlayerKillstreak(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	return scoreboard[playerIndex].killstreak
end


function Scoreboard.GetPlayerKills(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	return scoreboard[playerIndex].kills
end


function Scoreboard.UpdateCash(player, cash)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	scoreboard[playerIndex].cash = scoreboard[playerIndex].cash + cash

	updateScoreboard()
end


function Scoreboard.UpdateKills(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	scoreboard[playerIndex].kills = scoreboard[playerIndex].kills + 1
	scoreboard[playerIndex].kdRatio = calculateKdRatio(scoreboard[playerIndex].kills, scoreboard[playerIndex].deaths)

	updateScoreboard()
end


function Scoreboard.UpdateDeaths(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	scoreboard[playerIndex].deaths = scoreboard[playerIndex].deaths + 1
	scoreboard[playerIndex].kdRatio = calculateKdRatio(scoreboard[playerIndex].kills, scoreboard[playerIndex].deaths)

	updateScoreboard()
end


function Scoreboard.UpdateKillstreak(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	scoreboard[playerIndex].killstreak = scoreboard[playerIndex].killstreak + 1

	updateScoreboard()
end


function Scoreboard.ResetKillstreak(player)
	local playerIndex = findPlayerIndex(player)

	if not playerIndex then return end

	scoreboard[playerIndex].killstreak = 0
end