local pointPart = script.Parent
local blue = Color3.fromRGB(0, 0, 255)
local green = Color3.fromRGB(0, 255, 0)
local red = Color3.fromRGB(255, 0, 0)

local somePoint = 10
local manyPoint = 50
local losePoint = 100

local players = game:GetService("Players")

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