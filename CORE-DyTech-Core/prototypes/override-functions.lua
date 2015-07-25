-- require "prototypes.override-functions"

function RemoveFromRecipe(Name, Ingredient)
	for k, v in pairs(data.raw["recipe"][Name].ingredients) do
		if v[1] == Ingredient or v.name == Ingredient then 
			table.remove(data.raw["recipe"][Name].ingredients, k) 
		end
	end
end

function AddToRecipe(Name, Ingredient, Amount)
	table.insert(data.raw["recipe"][Name].ingredients,{Ingredient, Amount})
end

function ChangeRecipe(Name, Ingredient1, Ingredient2, Amount)
	for k, v in pairs(data.raw["recipe"][Name].ingredients) do
		if v[1] == Ingredient1 then table.remove(data.raw["recipe"][Name].ingredients, k) end
	end
table.insert(data.raw["recipe"][Name].ingredients,{Ingredient2, Amount})
end

function AddRecipeToTech(Name, Recipe)
	table.insert(data.raw["technology"][Name].effects,{type = "unlock-recipe",recipe = Recipe})
end

function AddRequirementToTech(Name, Requirement)
	table.insert(data.raw["technology"][Name].prerequisites, Requirement)
end

function Add_To_Recipe_Looped(Data)
	for bla,name in pairs(Data.Ingredient) do
		table.insert(data.raw["recipe"][Data.Name].ingredients,name)
	end
end

function Add_Requirement_To_Tech_Looped(Data)
	for bla,name in pairs(Data.Prereq) do
		table.insert(data.raw["technology"][Data.Name].prerequisites, name)
	end
end

function Add_Recipe_To_Tech_Looped(Data)
	for bla,name in pairs(Data.Recipes) do
	table.insert(data.raw["technology"][Data.Name].effects,{type = "unlock-recipe",recipe = name})
	end
end

function AddIngredientToTech(Name, Ingredient, Amount)
	table.insert(data.raw["technology"][Name].unit.ingredients,{Ingredient, Amount})
end

function Add_Ingredient_To_Tech_Smart(Data)
	local Statement1 = Data.Ingredients.Science1
	local Statement2 = Data.Ingredients.Science2
	local Statement3 = Data.Ingredients.Science3
	local Statement4 = Data.Ingredients.Science4
	if Statement1 then
		table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"science-pack-1", 1})
	end
	if Statement2 then
		table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"science-pack-2", 1})
	end
	if Statement3 then
		table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"science-pack-3", 1})
	end
	if Statement4 then
		table.insert(data.raw["technology"][Data.Name].unit.ingredients,{"alien-science-pack", 1})
	end
end