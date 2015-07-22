-- require "prototypes.prototype-creation"

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

function CreateBlankTech(Name, Icon, Count, Time, Order)
return
data:extend(
{ 
  {
    type = "technology",
    name = Name,
    icon = Icon,
    effects =
    {
    },
    prerequisites = {},
    unit =
    {
      count = Count,
      ingredients =
      {
      },
      time = Time
    },
    order = Order or Name
  }
})
end