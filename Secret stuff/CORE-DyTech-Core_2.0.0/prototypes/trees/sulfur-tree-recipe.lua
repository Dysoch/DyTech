data:extend(
{ 
  {
    type = "recipe",
    name = "sulfur-seed",
	icon = "__CORE-DyTech-Core__/graphics/sulfur-tree/stage-1.png",
    energy_required = 1,
    ingredients = 
	{
	  {"sulfur-wood", 1},
	},
    result = "sulfur-seed"
  },
  {
    type = "recipe",
    name = "sulfur-from-wood",
    icon = "__base__/graphics/icons/sulfur.png",
    energy_required = 1,
    ingredients = 
	{
	  {"sulfur-wood", 1},
	},
    result = "sulfur",
	result_count = 2
  },
}
)