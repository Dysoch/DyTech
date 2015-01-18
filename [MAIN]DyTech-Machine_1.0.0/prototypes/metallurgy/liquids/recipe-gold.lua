data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-gold-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="gold-ore", amount=1},
	  {type="fluid", name="lava-1200", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-gold", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-gold-plate",
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    ingredients =
    {
      {type="fluid", name="molten-gold", amount=0.6},
      {type="item", name="mold-plate", amount=1},
    },
    results =
	{
      {type="item", name="gold-plate", amount=1},
      {type="item", name="mold-plate", amount=1},
    },
  },
}
)