data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-gear-1",
	category = "metallurgy-gear",
    energy_required = 0.25,
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=15},
    },
    results = 
	{
	  {type="item", name="iron-gear-wheel", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-gear-2",
	category = "metallurgy-gear",
    energy_required = 0.5,
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=15},
    },
    results = 
	{
	  {type="item", name="steel-gear-wheel", amount=1}
	}
  },
}
)