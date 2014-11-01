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
      {type="item", name="clean-iron-ore", amount=1},
	  {type="fluid", name="lava-1600", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-iron", amount=1}
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
      {type="item", name="clean-copper-ore", amount=1},
	  {type="fluid", name="lava-1200", amount=0.2}
    },
    results = 
	{
      {type="fluid", name="molten-copper", amount=1}
    },
  },
  {
    type = "recipe",
    name = "metallurgy-iron-chunks-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 0.25,
    ingredients =
    {
      {type="item", name="iron-chunks", amount=1},
	  {type="fluid", name="lava-1600", amount=0.2}
    },
    results = 
	{
	  {type="fluid", name="molten-iron", amount=0.03}
	}
  },
  {
    type = "recipe",
    name = "metallurgy-copper-chunks-smelt",
	enabled = false,
	category = "blast-furnace",
    energy_required = 0.25,
    ingredients =
    {
      {type="item", name="copper-chunks", amount=1},
	  {type="fluid", name="lava-1200", amount=0.2}
    },
    results = 
	{
      {type="fluid", name="molten-copper", amount=0.03}
    },
  },
}
)