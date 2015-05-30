require "prototypes.internal-config"
require "prototypes.functions"

data:extend(
{
	{
		type = "recipe",
		name = "nuclear-reactor",
		enabled = true,
		ingredients = Recipe("nuclear-reactor", 0),
		result = "nuclear-reactor"
	},
	{
		type = "recipe",
		name - "chemical-processor",
		enabled = true,
		ingredients = Recipe("chemical-processor", 0),
		result = "chemical processor"
	}
}
)