data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-tin-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
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
    name = "metallurgy-zinc-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="zinc-ore", amount=1},
	  {type="fluid", name="lava-800", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-zinc", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-lead-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="lead-ore", amount=1},
	  {type="fluid", name="lava-800", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-lead", amount=1}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-silver-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
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
    name = "metallurgy-gold-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1,
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
    name = "metallurgy-tungsten-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 1.5,
    ingredients =
    {
      {type="item", name="tungsten-ore", amount=1},
	  {type="fluid", name="lava-3600", amount=0.2}
    },
    results = 
	{
      {type="fluid", name="molten-tungsten", amount=1}
    },
  },
}
)