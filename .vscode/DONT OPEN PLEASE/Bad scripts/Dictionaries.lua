local enemy = {
    Name = "Spike",
    Health = "1000"
}

enemy.Name = "axel"

print("The Villain " .. enemy["Name"] .. "Has Been spotted")

for key, value in pairs(enemy) do
    print(key .. "is" .. value)
end


local menu = {
    cabbage = false,
    beef = false,
    tomato = false,
    noodles = false,
}

local selectedIngredients = {}

for menuChoice, value in pairs(menu) do
    if value then
        table.insert(selectedIngredients, menuChoice)
    end
end

if #selectedIngredients > 0 then
    print("You ordered soup with: ")
    for index, soupIngredient in pairs(selectedIngredients) do
        print(soupIngredient)
    end
else
    print("Nothing was selected. Are you hungry?")
end


local house = {
    kitchen = "pile of Junk",
    livingRoom = "litten",
    bedroom = "nobody is There",
    bedroom2 = "puppy",
}

local function findPet(whereToSearch, searchBar)
    for place, value in pairs(whereToSearch) do
        if value == searchBar then
            return place
    end
end
end