data:extend(
{ 
  {
    type = "recipe",
    name = "clean-iron-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=3},
	  {type="item", name="iron-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-iron-ore", amount=1},
      {type="fluid", name="sludge", amount=3},
    },
  },
  {
    type = "recipe",
    name = "clean-copper-ore",
    icon = "__base__/graphics/icons/copper-ore.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 1,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=5},
	  {type="item", name="copper-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-copper-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
    },
  },
  {
    type = "recipe",
    name = "iron-chunks",
    category = "smelting",
	enabled = false,
    energy_required = 7,
    ingredients = 
	{
	  {"iron-chunks", 25}
	},
    result = "iron-plate"
  },
  {
    type = "recipe",
    name = "copper-chunks",
    category = "smelting",
	enabled = false,
    energy_required = 7,
    ingredients = 
	{
	  {"copper-chunks", 25}
	},
    result = "copper-plate"
  },
  {
    type = "recipe",
    name = "sludge-processing",
    icon = "__base__/graphics/icons/stone.png",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 2.5,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="sludge", amount=15},
    },
    results = 
    {
      {type="item", name="stone", amount_min=1, amount_max=5, probability=1},
      {type="item", name="iron-chunks", amount_min=1, amount_max=2, probability=0.075},
      {type="item", name="copper-chunks", amount_min=1, amount_max=2, probability=0.1},
    },
  },
 
}
)