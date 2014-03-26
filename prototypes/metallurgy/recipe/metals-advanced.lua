data:extend(
{
  {
    type = "recipe",
    name = "metallurgy-copper-tungsten-alloy",
	enabled = false,
	category = "forge",
    energy_required = 1.5,
    ingredients =
    {
      {type="fluid", name="molten-copper-tungsten", amount=10},
      {type="fluid", name="water", amount=1},
    },
    results = 
	{
      {type="item", name="copper-tungsten-alloy", amount=1}
    },
  },
}
)