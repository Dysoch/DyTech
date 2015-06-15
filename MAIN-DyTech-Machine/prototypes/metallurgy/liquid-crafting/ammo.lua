data:extend(
{ 
  {
    type = "item",
    name = "mold-ammo-basic",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-ammo-basic.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "ammo-1-basic",
    stack_size = 100
  },
  {
    type = "item",
    name = "mold-ammo-advanced",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-ammo-advanced.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "ammo-2-advanced",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-ammo-basic",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"basic-bullet-magazine", 1}
    },
    result = "mold-ammo-basic"
  },
  {
    type = "recipe",
    name = "mold-ammo-advanced",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"piercing-bullet-magazine", 1}
    },
    result = "mold-ammo-advanced"
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-basic-1",
    icon = "__base__/graphics/icons/basic-bullet-magazine.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-ammo",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.5},
	  {type="item", name="mold-ammo-basic", amount=0},
    },
    results = 
	{
	  {type="item", name="basic-bullet-magazine", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-basic-2",
    icon = "__base__/graphics/icons/shotgun-shell.png",
	category = "forge",
    energy_required = 0.5,
	enabled = false,
    subgroup = "liquid-crafting-ammo",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.5},
	  {type="fluid", name="molten-copper", amount=1.5},
	  {type="item", name="mold-ammo-basic", amount=0},
    },
    results = 
	{
	  {type="item", name="shotgun-shell", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-1",
    icon = "__base__/graphics/icons/piercing-bullet-magazine.png",
	category = "forge",
    energy_required = 0.5,
	enabled = false,
    subgroup = "liquid-crafting-ammo",
    ingredients =
    {
	  {type="fluid", name="molten-copper", amount=4},
	  {type="fluid", name="molten-carbonated-iron", amount=0.8},
	  {type="item", name="mold-ammo-advanced", amount=0},
    },
    results = 
	{
	  {type="item", name="piercing-bullet-magazine", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-2",
    icon = "__base__/graphics/icons/rocket.png",
	category = "forge",
    energy_required = 0.75,
	enabled = false,
    subgroup = "liquid-crafting-ammo",
    ingredients =
    {
	  {type="fluid", name="molten-iron", amount=1.5},
	  {type="fluid", name="molten-copper", amount=1.15},
	  {type="item", name="explosives", amount=2},
	  {type="item", name="mold-ammo-advanced", amount=0},
    },
    results = 
	{
	  {type="item", name="rocket", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-ammo-advanced-3",
    icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
	category = "forge",
    energy_required = 0.75,
	enabled = false,
    subgroup = "liquid-crafting-ammo",
    ingredients =
    {
	  {type="fluid", name="molten-carbonated-iron", amount=1.5},
	  {type="fluid", name="molten-copper", amount=1.5},
	  {type="item", name="mold-ammo-advanced", amount=0},
    },
    results = 
	{
	  {type="item", name="piercing-shotgun-shell", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-ammo",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-ammo-basic"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-ammo-advanced"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-ammo-basic-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-ammo-basic-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-ammo-advanced-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-ammo-advanced-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-ammo-advanced-3"
      },
    },
    prerequisites = {"lava-04", "water-cleaning"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "molds-ammo",
  },
}
)