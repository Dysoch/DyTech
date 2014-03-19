data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-iron-carbonated",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="carbon", amount=1},
	  {type="fluid", name="lava-2000", amount=0.2},
	  {type="fluid", name="molten-iron", amount=10},
    },
    results = 
	{
	  {type="fluid", name="molten-carbonated-iron", amount=10}
	}
  },
}
)