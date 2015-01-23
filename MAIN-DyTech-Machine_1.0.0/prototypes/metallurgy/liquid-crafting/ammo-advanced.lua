data:extend(
{ 
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-1",
    icon = "__base__/graphics/icons/piercing-bullet-magazine.png",
	category = "forge",
    energy_required = 0.5,
	enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=4},
	  {type="fluid", name="molten-carbonated-iron", amount=0.8},
	  {type="item", name="mold-ammo-advanced", amount=1},
    },
    results = 
	{
	  {type="item", name="piercing-bullet-magazine", amount=1},
	  {type="item", name="mold-ammo-advanced", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-2",
    icon = "__base__/graphics/icons/rocket.png",
	category = "forge",
    energy_required = 0.75,
	enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.5},
	  {type="fluid", name="molten-copper", amount=1.15},
	  {type="item", name="explosives", amount=2},
	  {type="item", name="mold-ammo-advanced", amount=1},
    },
    results = 
	{
	  {type="item", name="rocket", amount=1},
	  {type="item", name="mold-ammo-advanced", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-3",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
	category = "forge",
    energy_required = 0.75,
	enabled = false,
    subgroup = "assembling-molds-crafting",
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=1.5},
	  {type="fluid", name="molten-copper", amount=1.5},
	  {type="item", name="mold-ammo-advanced", amount=1},
    },
    results = 
	{
	  {type="item", name="piercing-shotgun-shell", amount=1},
	  {type="item", name="mold-ammo-advanced", amount=1},
	}
  },
}
)