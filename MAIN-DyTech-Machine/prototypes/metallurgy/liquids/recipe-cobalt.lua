data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-cobalt-smelt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/fluid/molten-cobalt.png",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="clean-cobalt-ore", amount=1},
	  {type="fluid", name="lava-2600", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-cobalt", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-cobalt-plate",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/cobalt/plate-icon.png",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    subgroup = "liquid-crafting-plates",
    ingredients =
    {
      {type="fluid", name="molten-cobalt", amount=0.6},
      {type="item", name="mold-plate", amount=0},
    },
    results = 
	{
      {type="item", name="cobalt-plate", amount=1},
    },
  },
  {
    type = "recipe",
    name = "cobalt-plate-01",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/cobalt/plate-icon.png",
    category = "smelting",
    energy_required = 2.5,
    ingredients = {{ "clean-cobalt-ore", 1}},
    result = "cobalt-plate"
  },
}
)