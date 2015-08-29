data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-copper-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-copper.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 5,
    ingredients =
    {
      {type="item", name="clean-copper-ore", amount=1},
	  {type="fluid", name="lava-1200", amount=0.2}
    },
    results = 
	{
      {type="fluid", name="molten-copper", amount=1}
    },
  },
  {
    type = "recipe",
    name = "metallurgy-copper-plate",
    icon = "__base__/graphics/icons/copper-plate.png",
	enabled = false,
	category = "forge",
    energy_required = 2,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-copper", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results =
	{
      {type="item", name="copper-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "copper-plate-01",
    icon = "__base__/graphics/icons/copper-plate.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-copper-ore", 1}},
    result = "copper-plate"
  },
}
)