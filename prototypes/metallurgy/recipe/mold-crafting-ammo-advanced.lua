data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-1",
	category = "metallurgy-ammo-advanced",
    energy_required = 0.5,
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=40},
	  {type="fluid", name="molten-carbonated-iron", amount=8},
    },
    results = 
	{
	  {type="item", name="piercing-bullet-magazine", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-2",
	category = "metallurgy-ammo-advanced",
    energy_required = 0.75,
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=15},
	  {type="fluid", name="molten-copper", amount=11.5},
	  {type="item", name="explosives", amount=2},
    },
    results = 
	{
	  {type="item", name="rocket", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-3",
	category = "metallurgy-ammo-advanced",
    energy_required = 0.75,
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=15},
	  {type="fluid", name="molten-copper", amount=15},
    },
    results = 
	{
	  {type="item", name="piercing-shotgun-shell", amount=1},
	}
  },
}
)