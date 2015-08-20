data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-silver-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-silver.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="clean-silver-ore", amount=1},
	  {type="fluid", name="lava-2400", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-silver", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-silver-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/silver/plate-icon.png",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-silver", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results =
	{
      {type="item", name="silver-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "silver-plate-01",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/silver/plate-icon.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-silver-ore", 1}},
    result = "silver-plate"
  },
}
)