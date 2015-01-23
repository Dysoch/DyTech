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
      {type="item", name="cobalt-ore", amount=1},
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
    subgroup = "metallurgy-plates",
    ingredients =
    {
      {type="fluid", name="molten-cobalt", amount=0.6},
      {type="item", name="mold-plate", amount=1},
    },
    results = 
	{
      {type="item", name="cobalt-plate", amount=1},
      {type="item", name="mold-plate", amount=1},
    },
  },
}
)