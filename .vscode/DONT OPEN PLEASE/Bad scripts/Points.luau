local pointPart = game.Workspace.PointPart
local blue = Color3.fromRGB(0, 0, 255)
local green = Color3.fromRGB(0, 255, 0)
local red = Color3.fromRGB(255, 0, 0)

local somePoint = 10
local manyPoint = 50
local losePoint = 100

-- This get the players in the game
local players = game:GetService("Players")

-- This function gives points to the player
local function givePoints(player)
    local currentColor = pointPart.Color
    local playerStats = player:WaitForChild("leaderstats")
    local playerPoints = playerStats:WaitForChild("Points")
    if blue then
        playerPoints.Value += somePoint
    elseif green then
        playerPoints.Value += manyPoint
    else
        playerPoints.Value -= losePoint
    end
    pointPart:Destroy()
    local particle = Instance.new("ParticleEmitter")
end

local function partTouched(otherPart)
    local player = players:GetPlayerFromCharacter(otherPart.Parent)
    if player then
        givePoints(player)
    end
end

pointPart.Touched:Connect(partTouched)

while true do
    pointPart.Color = blue
    wait(3)
    pointPart.Color = green
    wait(2)
    pointPart.Color = red
    wait(1)
end

--This part checks how long the player has been in the game
local function checkTime(player)
    local playerStats = player:WaitForChild("leaderstats")
    local playerTime = playerStats:WaitForChild("PlayTime")
    local time = os.time()
    local timeDifference = time - playerTime.Value
    if timeDifference > 10 then
        playerTime.Value = time
    end
end