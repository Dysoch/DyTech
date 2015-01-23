data:extend(
{ 
  {
    type = "recipe",
    name = "dirty-water-sand",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=10},
    },
    results = 
	{
	  {type="fluid", name="water", amount=9},
	  {type="item", name="sand", amount=1},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-stone",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=50},
    },
    results = 
	{
	  {type="fluid", name="water", amount=45},
	  {type="item", name="stone", amount=1},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-stone-sand-random",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=100},
    },
    results = 
	{
	  {type="fluid", name="water", amount=80},
      {type="item", name="stone", amount_min=1, amount_max=4, probability=0.4},
      {type="item", name="sand", amount_min=1, amount_max=15, probability=0.8},
      {type="item", name="gold-ore", amount_min=1, amount_max=1, probability=0.01},
      {type="item", name="iron-ore", amount_min=1, amount_max=1, probability=0.025},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-to-water",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=50},
    },
    results = 
	{
	  {type="fluid", name="water", amount=40},
	}
  },
  {
    type = "recipe",
    name = "dirty-water-to-water-2",
    icon = "__CORE-DyTech-Core__/graphics/fluid/dirty-water.png",
	category = "liquid-handler",
    subgroup = "metallurgy-intermediates",
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="dirty-water", amount=500},
    },
    results = 
	{
	  {type="fluid", name="water", amount=460},
	}
  },
}
)