-- require "prototypes.prototype-creation"
require "prototypes.override-functions"

function DyTech_Create_Item_and_Recipe(Data)
	DyTech_Create_Item_and_Recipe_Blank(Data)
	Add_To_Recipe_Looped(Data)
	if Data.Entity then
		data.raw["item"][Data.Name].place_result = Data.Name
	end
end

function DyTech_Create_Item_and_Recipe_Blank(Data)
return
data:extend(
{ 
  {
	type= "item",
	name= Data.Name,
	icon = Data.Icon,
	flags= {"goes-to-"..Data.Flag},
	subgroup = Data.Subgroup,
	order= Data.Name,
	stack_size= Data.Stack or 50,
  },
  {
    type = "recipe",
    name = Data.Name,
	category = Data.Category or nil,
	energy_required = Data.Time or 1,
    enabled = Data.Enabled or true,
    ingredients =
    {
    },
    result = Data.Name,
	result_count = Data.ResultCount or 1
  }
})
end

--[[ DyTech_Create_Item_and_Recipe({
	Name = "", 
	Icon = "", 
	Flag = "",
	Subgroup = "",
	Stack = 50,
	Time = 10,
	Enabled = false,
	Ingredient = {{"iron-plate", 25},{"iron-plate", 25}},
	Entity = true
}) ]]--
-- This function creates both item and recipe!
-- Flag needs to be either "main-inventory" or "quickbar"
-- When Stack is not defined, default is 50
-- Subgroup is the place where it can be found in the menu.
-- Time is the time it takes to create the recipe. If not specified, default is 1 second.
-- Enabled is optional. if not specified, it will be true.
-- Category is optional. if not specified, it will be nothing. This is to specify in which machines it can be created.
-- ResultCount is optional. Use this if you want more results. when not specified, default is 1.
-- Entity is for the use of items that have an entity hooked to it. When true, it creates the place_result with Name specified in the first line
-- The order string isnt specified, because the name is placed as the order string.

function DyTech_Create_Tech_Core(Data)
	DyTech_Create_Blank_Tech_Core(Data)
	Add_Requirement_To_Tech_Looped(Data)
	Add_Recipe_To_Tech_Looped(Data)
	Add_Ingredient_To_Tech_Smart(Data)
end

function DyTech_Create_Tech_Machine(Data)
	DyTech_Create_Blank_Tech_Machine(Data)
	Add_Requirement_To_Tech_Looped(Data)
	Add_Recipe_To_Tech_Looped(Data)
	Add_Ingredient_To_Tech_Smart(Data)
end

function DyTech_Create_Tech_Power(Data)
	DyTech_Create_Blank_Tech_Power(Data)
	Add_Requirement_To_Tech_Looped(Data)
	Add_Recipe_To_Tech_Looped(Data)
	Add_Ingredient_To_Tech_Smart(Data)
end

function DyTech_Create_Tech_War(Data)
	DyTech_Create_Blank_Tech_War(Data)
	Add_Requirement_To_Tech_Looped(Data)
	Add_Recipe_To_Tech_Looped(Data)
	Add_Ingredient_To_Tech_Smart(Data)
end

--[[ DyTech_Create_Tech_NAME({
	Name = "", 
	Icon = "", 
	Count = 50, 
	Time = 30, 
	Prereq = {""}, 
	Recipes = {""}, 
	Ingredients = {Science1=true, Science2=true, Science3=false, Science4=false}
}) ]]--
-- Change NAME in function to module, then fill in rest :D Doesnt matter which module it is in, just use correct module
-- Icon needs to be like this: "metallurgy/technology/centrifuge.png" . The path to the graphics folder is already filled in, you need to fill in the rest.
-- Change the ingredients to true if you wanna use them. False isnt used.
-- Dont keep Prereq empty, this will throw errors for now. It needs to have a requirement!
-- Same thing applies to Recipes!
-- The order string isnt specified, because the name is placed as the order string.
-- If for any reason this function throws errors, please let Dysoch know.

function DyTech_Create_Blank_Tech_Core(Data)
return
data:extend(
{ 
  {
    type = "technology",
    name = Data.Name,
    icon = "__CORE-DyTech-Core__/graphics/"..Data.Icon,
    effects =
    {
    },
    prerequisites = {},
    unit =
    {
      count = Data.Count,
      ingredients =
      {
      },
      time = Data.Time
    },
    order = Data.Name
  }
})
end

function DyTech_Create_Blank_Tech_Machine(Data)
return
data:extend(
{ 
  {
    type = "technology",
    name = Data.Name,
    icon = "__MAIN-DyTech-Machine__/graphics/"..Data.Icon,
    effects =
    {
    },
    prerequisites = {},
    unit =
    {
      count = Data.Count,
      ingredients =
      {
      },
      time = Data.Time
    },
    order = Data.Name
  }
})
end

function DyTech_Create_Blank_Tech_Power(Data)
return
data:extend(
{ 
  {
    type = "technology",
    name = Data.Name,
    icon = "__MAIN-DyTech-Power__/graphics/"..Data.Icon,
    effects =
    {
    },
    prerequisites = {},
    unit =
    {
      count = Data.Count,
      ingredients =
      {
      },
      time = Data.Time
    },
    order = Data.Name
  }
})
end

function DyTech_Create_Blank_Tech_War(Data)
return
data:extend(
{ 
  {
    type = "technology",
    name = Data.Name,
    icon = "__MAIN-DyTech-War__/graphics/"..Data.Icon,
    effects =
    {
    },
    prerequisites = {},
    unit =
    {
      count = Data.Count,
      ingredients =
      {
      },
      time = Data.Time
    },
    order = Data.Name
  }
})
end