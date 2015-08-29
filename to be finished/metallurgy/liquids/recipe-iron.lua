data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-iron-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-iron.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="clean-iron-ore", amount=1},
	  {type="fluid", name="lava-1600", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-iron", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-iron-plate",
    icon = "__base__/graphics/icons/iron-plate.png",
	enabled = false,
	category = "forge",
    energy_required = 2,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-iron", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results = 
	{
      {type="item", name="iron-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "iron-plate-01",
    icon = "__base__/graphics/icons/iron-plate.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{"clean-iron-ore", 1}},
    result = "iron-plate"
  },
}
)