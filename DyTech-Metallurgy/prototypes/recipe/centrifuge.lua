data:extend(
{ 
  {
    type = "recipe",
    name = "clean-iron-ore",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 2,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=5},
	  {type="item", name="iron-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-iron-ore", amount=1},
      {type="item", name="stone", amount=1},
    },
  },
  {
    type = "recipe",
    name = "clean-copper-ore",
	category = "centrifuge",
    subgroup = "metallurgy-intermediates",
    energy_required = 2,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="water", amount=5},
	  {type="item", name="copper-ore", amount=1},
    },
    results = 
    {
      {type="item", name="clean-copper-ore", amount=1},
      {type="item", name="stone", amount=1},
    },
  },
}
)