local players = game:GetService("Players")

local function onPlayerJoin(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player
    
    local points = Instance.new("IntValue")
    points.Name = "Points"
    points.Value = 0
    points.Parent = leaderstats

    local playTime = Instance.new("IntValue")
    playTime.Name = "PlayTime"
    playTime.Value = 0
    playTime.Parent = leaderstats
end

players.PlayerAdded:Connect(onPlayerJoin)

