data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-silver-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="silver-ore", amount=1},
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
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    ingredients =
    {
      {type="fluid", name="molten-silver", amount=0.6},
      {type="item", name="mold-plate", amount=1},
    },
    results =
	{
      {type="item", name="silver-plate", amount=1},
      {type="item", name="mold-plate", amount=1},
    },
  },
}
)