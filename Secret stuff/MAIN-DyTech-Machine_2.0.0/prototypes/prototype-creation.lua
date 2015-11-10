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

function CreateBlankTech(Data)
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

function CreateTech(Data)
	CreateBlankTech(Data)
	AddRequirementToTechLooped(Data)
	AddRecipeToTechLooped(Data)
	AddIngredientToTechSmart(Data)
end