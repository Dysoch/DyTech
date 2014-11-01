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
	  {type="fluid", name="molten-iron", amount=1},
    },
    results = 
	{
	  {type="fluid", name="molten-carbonated-iron", amount=1}
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
	  {type="fluid", name="molten-copper", amount=0.25},
	  {type="fluid", name="molten-tungsten", amount=0.75},
    },
    results = 
	{
	  {type="fluid", name="molten-copper-tungsten", amount=1}
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
	  {type="fluid", name="molten-copper", amount=0.6},
	  {type="fluid", name="molten-tin", amount=0.4},
    },
    results = 
	{
	  {type="fluid", name="molten-bronze", amount=1}
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
	  {type="fluid", name="molten-copper", amount=0.6},
	  {type="fluid", name="molten-zinc", amount=0.4},
    },
    results = 
	{
	  {type="fluid", name="molten-brass", amount=1}
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
	  {type="fluid", name="molten-silver", amount=0.6},
	  {type="fluid", name="molten-gold", amount=0.4},
    },
    results = 
	{
	  {type="fluid", name="molten-electrum", amount=1}
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
	  {type="fluid", name="molten-copper", amount=0.88},
	  {type="fluid", name="molten-tin", amount=0.1},
	  {type="fluid", name="molten-zinc", amount=0.02},
    },
    results = 
	{
	  {type="fluid", name="molten-gunmetal", amount=1}
	}
  },
}
)