data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-ammo-basic-1",
    icon = "__base__/graphics/icons/basic-bullet-magazine.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.5},
	  {type="item", name="mold-ammo-basic", amount=1},
    },
    results = 
	{
	  {type="item", name="basic-bullet-magazine", amount=1},
	  {type="item", name="mold-ammo-basic", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-basic-2",
    icon = "__base__/graphics/icons/shotgun-shell.png",
	category = "forge",
    energy_required = 0.5,
	enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.5},
	  {type="fluid", name="molten-copper", amount=1.5},
	  {type="item", name="mold-ammo-basic", amount=1},
    },
    results = 
	{
	  {type="item", name="shotgun-shell", amount=1},
	  {type="item", name="mold-ammo-basic", amount=1},
	}
  },
}
)