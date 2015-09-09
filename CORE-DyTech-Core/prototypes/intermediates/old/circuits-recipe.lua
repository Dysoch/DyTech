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
  {
    type = "recipe",
    name = "logic-diamond",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 300,
    ingredients = 
	{
	  {type="fluid", name="sulfuric-acid", amount=15},
	  {type="item", name="compressed-diamond", amount=1},
	},
    result = "logic-diamond"
  },
  {
    type = "recipe",
    name = "logic-diamond-processor",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 60,
    ingredients = 
	{
	  {type="fluid", name="lubricant", amount=10},
	  {type="item", name="logic-diamond", amount=1},
	  {type="item", name="advanced-processing-unit", amount=1},
	},
    result = "logic-diamond-processor"
  },
}
)