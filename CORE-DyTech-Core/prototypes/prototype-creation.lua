-- require "prototypes.prototype-creation"
require "prototypes.override-functions"

function CreateBlankRecipe(Name, Category, Time, Enabled, Result)
return
data:extend(
{ 
  {
    type = "recipe",
    name = Name,
	category = Category,
	energy_required = Time,
    enabled = Enabled,
    ingredients =
    {
    },
    result = Result or Name
  }
})
end

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