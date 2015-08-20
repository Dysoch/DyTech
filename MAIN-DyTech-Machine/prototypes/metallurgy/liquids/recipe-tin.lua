data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-tin-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-tin.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="clean-tin-ore", amount=1},
	  {type="fluid", name="lava-800", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-tin", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-tin-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tin/plate-icon.png",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-tin", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results = 
	{
      {type="item", name="tin-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "tin-plate-01",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tin/plate-icon.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-tin-ore", 1}},
    result = "tin-plate"
  },
}
)