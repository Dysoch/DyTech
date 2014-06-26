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
  {
    type = "recipe",
    name = "metallurgy-copper-tungsten",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=2.5},
	  {type="fluid", name="molten-tungsten", amount=7.5},
    },
    results = 
	{
	  {type="fluid", name="molten-copper-tungsten", amount=10}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-bronze",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=6},
	  {type="fluid", name="molten-tin", amount=4},
    },
    results = 
	{
	  {type="fluid", name="molten-bronze", amount=10}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-brass",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=6},
	  {type="fluid", name="molten-zinc", amount=4},
    },
    results = 
	{
	  {type="fluid", name="molten-brass", amount=10}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-electrum",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
	  {type="fluid", name="molten-silver", amount=6},
	  {type="fluid", name="molten-gold", amount=4},
    },
    results = 
	{
	  {type="fluid", name="molten-electrum", amount=10}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-gunmetal",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=8.8},
	  {type="fluid", name="molten-tin", amount=1},
	  {type="fluid", name="molten-zinc", amount=0.2},
    },
    results = 
	{
	  {type="fluid", name="molten-gunmetal", amount=10}
	}
  },
}
)