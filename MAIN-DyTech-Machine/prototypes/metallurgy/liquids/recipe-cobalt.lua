data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-cobalt-smelt",
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
}
)