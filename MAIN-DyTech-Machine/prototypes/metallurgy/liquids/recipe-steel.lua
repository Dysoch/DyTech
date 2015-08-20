data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-iron-carbonated",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-carbonated-iron.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 10,
    ingredients =
    {
      {type="item", name="coal", amount=1},
	  {type="fluid", name="lava-2000", amount=1},
	  {type="fluid", name="molten-iron", amount=5},
    },
    results = 
	{
	  {type="fluid", name="molten-carbonated-iron", amount=5}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-steel-plate-1",
    icon = "__base__/graphics/icons/steel-plate.png",
	enabled = false,
	category = "forge",
    energy_required = 7,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-carbonated-iron", amount=3},
      {type="item", name="mold-plate", amount=0},
    },
    results =
	{
      {type="item", name="steel-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "metallurgy-steel-plate-2",
    icon = "__base__/graphics/icons/steel-plate.png",
	enabled = false,
	category = "forge",
    energy_required = 7,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="item", name="coal", amount=5},
	  {type="fluid", name="molten-iron", amount=5},
      {type="item", name="mold-plate", amount=0},
    },
    results =
	{
      {type="item", name="steel-plate", amount=1},
    },
  },
}
)