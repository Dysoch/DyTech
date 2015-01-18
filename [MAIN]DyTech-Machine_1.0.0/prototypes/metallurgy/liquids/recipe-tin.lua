data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-tin-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 7,
    ingredients =
    {
      {type="item", name="tin-ore", amount=1},
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
	enabled = false,
	category = "forge",
    energy_required = 3.5,
    ingredients =
    {
      {type="fluid", name="molten-tin", amount=0.6},
      {type="item", name="mold-plate", amount=1},
    },
    },
    results = 
	{
      {type="item", name="tin-plate", amount=1},
      {type="item", name="mold-plate", amount=1},
    },
    },
  },
}
)