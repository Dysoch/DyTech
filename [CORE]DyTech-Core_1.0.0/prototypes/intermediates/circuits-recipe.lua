data:extend(
{ 
  {
    type = "recipe",
    name = "advanced-processing-unit",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 5},
      {"zinc-plate", 1},
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
	  {"zinc-plate", 1},
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
}
)