data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-ammo-basic-1",
	category = "metallurgy-ammo-basic",
    energy_required = 0.25,
    enabled = false,
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=15},
    },
    results = 
	{
	  {type="item", name="basic-bullet-magazine", amount=1}
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-basic-2",
	category = "metallurgy-ammo-basic",
    energy_required = 0.5,
	enabled = false,
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=15},
	  {type="fluid", name="molten-copper", amount=15},
    },
    results = 
	{
	  {type="item", name="shotgun-shell", amount=1},
	}
  },
}
)