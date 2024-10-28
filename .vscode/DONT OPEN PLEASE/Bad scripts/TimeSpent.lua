local time = 1


local function timeSPent(player)
    local playerStats = player:WaitForChild("leaderstats")
    local playerTime = playerStats:WaitForChild("PlayTime")

    if playerStats:FindFirstChild("PlayTime") then
        playerTime.Value = playerTime.Value == time
    end
end