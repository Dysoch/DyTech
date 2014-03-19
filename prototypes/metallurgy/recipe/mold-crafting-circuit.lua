data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-circuit-1",
	category = "metallurgy-circuit",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=8},
	  {type="fluid", name="molten-copper", amount=10},
    },
    results = 
	{
	  {type="item", name="electronic-circuit", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-circuit-2",
	category = "metallurgy-circuit",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=14},
	  {type="fluid", name="molten-copper", amount=18},
	  {type="item", name="plastic-bar", amount=1},
    },
    results = 
	{
	  {type="item", name="advanced-circuit", amount=1}
	}
  },
}
)