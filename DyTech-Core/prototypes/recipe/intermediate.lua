data:extend(
{ 
  {
    type = "recipe",
    name = "advanced-processing-unit",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 5},
      {"steel-plate", 2},
	  {"bundled-wire", 5}
    },
    result = "advanced-processing-unit"
  },
  {
    type = "recipe",
    name = "bundled-wire",
    enabled = false,
    ingredients =
    {
      {"red-wire", 1},
      {"green-wire", 1},
	  {"copper-cable", 1},
	  {"rubber", 2}
    },
    result = "bundled-wire",
	result_count = 3
  },
  {
    type = "recipe",
    name = "rubber",
    category = "smelting",
    energy_required = 3.5,
    ingredients = 
	{
	  {"resin", 1}
	},
    result = "rubber"
  },
  {
    type = "recipe",
    name = "rubber-seed",
    energy_required = 1,
    ingredients = 
	{
	  {"resin", 1}
	},
    result = "rubber-seed"
  },
  {
    type = "recipe",
    name = "stone-gear-wheel",
    ingredients =
    {
      {"stone", 1},
    },
    result = "stone-gear-wheel"
  },
  {
    type = "recipe",
    name = "steel-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1},
    },
    result = "steel-gear-wheel"
  },
}
)