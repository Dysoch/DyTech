require "prototypes.internal-config"

data:extend(
{
  {
	type = "recipe",
	name = "nuclear-reactor",
	enabled = true,
    ingredients = 
	{
	  {"steam-engine", 5},
	  {"tin-plate", 10},
	},
	result = "nuclear-reactor"
  },
  {
	type = "recipe",
	name = "chemical-processor",
	enabled = true,
    ingredients = 
	{
	  {"assembling-machine-2", 1},
	  {"tin-plate", 10},
	},
	result = "chemical-processor"
  }
}
)