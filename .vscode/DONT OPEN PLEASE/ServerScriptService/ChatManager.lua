-- Cycles through chat dialogue when prompt is used

local Chat = game:GetService("Chat")

local prompt = script.Parent


local npc = prompt.Parent
local characterParts = npc.CharacterParts
local head = characterParts.Head

-- Add array here
local randomGenerator = Random.new()
local dialogueArray = {"Hi", "Do I Know You?", "GoodBye!"}
local dialogueIndex = 1

table.create("Name")
local function speak()
	local randomIndex = randomGenerator:NextInteger(1, #dialogueArray)
	local dialogue = dialogueArray[randomIndex]
	Chat:Chat(head, dialogue)
	
	if dialogueIndex == #dialogueArray then
		dialogueIndex = 1
	end
	dialogueIndex += 1
end

prompt.Triggered:Connect(speak)