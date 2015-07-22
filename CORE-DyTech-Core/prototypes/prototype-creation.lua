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