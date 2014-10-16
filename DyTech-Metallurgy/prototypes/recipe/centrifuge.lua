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
	  {type="fluid", name="water", amount=5},
	  {type="item", name="iron-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-iron-ore", amount=1},
      {type="fluid", name="sludge", amount=5},
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
}
)