data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-tungsten-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-tungsten.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="clean-tungsten-ore", amount=1},
	  {type="fluid", name="lava-3600", amount=0.2}
    },
    results = 
	{
      {type="fluid", name="molten-tungsten", amount=1}
    },
  },
  {
    type = "recipe",
    name = "metallurgy-tungsten-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tungsten/plate-icon.png",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-tungsten", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results =
	{
      {type="item", name="tungsten-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "tungsten-plate-01",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tungsten/plate-icon.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-tungsten-ore", 1}},
    result = "tungsten-plate"
  },
}
)