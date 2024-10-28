local pointsPartv = game.Workspace.Points:FindFirstChild()
--This part of the code stores the part color
local blue = Color3.fromRGB(0, 0, 255)
local green = Color3.fromRGB(0, 255, 0)
local red = Color3.fromRGB(255, 0, 0)
-- This one gives the points to the player 
local somePoint = 10
local manyPoint = 50
local losePoint = 100
--Get service of the Players


local players = game:GetService("Players")

for _, v in pointsPartv:GetChildren() do
    if v:IsA("Script") then continue end)
    v.Touched:Connect(function(hit)
        local player = players:GetPlayerFromCharacter(hit.parent)
        if player then
            player.leaderstats.Points.Value = player.leaderstats.Points.Value + somePoint
        end
    end)
end