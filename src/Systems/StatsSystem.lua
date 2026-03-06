local StatsSystem = {}

function StatsSystem:Init(player)

    local leaderstats = player:FindFirstChild("leaderstats")

    if not leaderstats then
        return
    end

    local wins = leaderstats:FindFirstChild("Wins")
    local losses = leaderstats:FindFirstChild("Losses")

    local totalWins = 0
    local totalLosses = 0

    if wins then
        totalWins = wins.Value
    end

    if losses then
        totalLosses = losses.Value
    end

    local totalGames = totalWins + totalLosses

    print("Wins:", totalWins)
    print("Losses:", totalLosses)
    print("Total Games:", totalGames)

end

return StatsSystem
