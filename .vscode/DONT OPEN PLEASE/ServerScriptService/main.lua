local players = game:GetService("Players")

local playerPoints = {

}

local function setPoints(newPlayer)
    local name = newPlayer.Name
    playerPoints[name] = 0
end

Players.PlayerAdded:Connect(setPoints)