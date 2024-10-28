local RewardManager = {}

-- Usable only in the module script
local rewardCoins = 50

-- Usable only in the module script
local difficultyModifier = {
	easy = 0.5,
	normal = 1,
	hard = 2
}

-- Usable in other scripts
function RewardManager.getCoinReward(difficulty)
	local coins = difficultyModifier[difficulty] * rewardCoins
	return coins
end

return RewardManager