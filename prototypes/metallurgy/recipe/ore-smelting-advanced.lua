data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-iron-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 0.25,
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
	  {type="fluid", name="lava-1600", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-iron", amount=10}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-copper-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 0.25,
    ingredients =
    {
      {type="item", name="copper-ore", amount=1},
	  {type="fluid", name="lava-1200", amount=0.2}
    },
    results = 
	{
      {type="fluid", name="molten-copper", amount=10}
    },
  },
}
)