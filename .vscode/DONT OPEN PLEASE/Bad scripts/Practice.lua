local playJoined = game:GetService("Players")

local function onPlayerJoin()
    local leaderstats = Instance.new("IntValue")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = playJoined
end