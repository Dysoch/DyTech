data:extend(
{ 
  {
    type = "item",
    name = "mold-belt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/icons/mold-circuit.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "liquid-crafting-molds",
    order = "belt",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "mold-belt",
    enabled = false,
    ingredients =
    {
      {"clay", 5},
      {"basic-transport-belt", 1}
    },
    result = "mold-belt"
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-1a",
    icon = "__base__/graphics/icons/basic-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.75},
	  {type="fluid", name="molten-iron", amount=0.75},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="basic-transport-belt", amount=2},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-1b",
    icon = "__base__/graphics/icons/basic-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=9.375},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="basic-transport-belt-to-ground", amount=2},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-1c",
    icon = "__base__/graphics/icons/basic-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-1",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=9},
	  {type="fluid", name="molten-copper", amount=5.625},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="basic-splitter", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-2a",
    icon = "__base__/graphics/icons/fast-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-2",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=7.875},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="fast-transport-belt", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-2b",
    icon = "__base__/graphics/icons/fast-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-2",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=39.375},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="fast-transport-belt-to-ground", amount=2},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-2c",
    icon = "__base__/graphics/icons/fast-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-2",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=31.5},
	  {type="fluid", name="molten-copper", amount=16.875},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="fast-splitter", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-3a",
    icon = "__base__/graphics/icons/express-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-3",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=15.375},
	  {type="fluid", name="lubricant", amount=1.5},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="express-transport-belt", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-3b",
    icon = "__base__/graphics/icons/express-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-3",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=99.75},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="express-transport-belt-to-ground", amount=2},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-3c",
    icon = "__base__/graphics/icons/express-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-3",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=61.5},
	  {type="fluid", name="molten-copper", amount=54.375},
	  {type="fluid", name="lubricant", amount=6},
	  {type="item", name="mold-belt", amount=1},
	  {type="item", name="plastic-bar", amount=15},
    },
    results = 
	{
	  {type="item", name="express-splitter", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-4a",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/super-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-4",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=15.375},
	  {type="fluid", name="lubricant", amount=1.5},
	  {type="fluid", name="molten-tungsten", amount=1.5},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="super-transport-belt", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-4b",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/super-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-4",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=99.75},
	  {type="fluid", name="molten-tungsten", amount=24},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="super-transport-belt-to-ground", amount=2},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-4c",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/super-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-4",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=61.5},
	  {type="fluid", name="molten-copper", amount=54.375},
	  {type="fluid", name="lubricant", amount=6},
	  {type="fluid", name="molten-tungsten", amount=3},
	  {type="fluid", name="molten-lead", amount=2.25},
	  {type="fluid", name="molten-zinc", amount=8.025},
	  {type="item", name="mold-belt", amount=1},
	  {type="item", name="plastic-bar", amount=15},
    },
    results = 
	{
	  {type="item", name="super-splitter", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-5a",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/extreme-transport-belt.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "a-5",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=0.375},
	  {type="fluid", name="molten-iron", amount=15.375},
	  {type="fluid", name="lubricant", amount=1.5},
	  {type="fluid", name="molten-tungsten", amount=1.5},
	  {type="fluid", name="molten-cobalt", amount=3.75},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="extreme-transport-belt", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-5b",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/extreme-transport-belt-to-ground.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "b-5",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.875},
	  {type="fluid", name="molten-iron", amount=99.75},
	  {type="fluid", name="molten-tungsten", amount=9},
	  {type="fluid", name="molten-cobalt", amount=52.5},
	  {type="item", name="mold-belt", amount=1},
    },
    results = 
	{
	  {type="item", name="extreme-transport-belt-to-ground", amount=2},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "recipe",
    name = "mold-crafting-belt-5c",
    icon = "__MAIN-DyTech-Machine__/graphics/transport-belts/icon/extreme-splitter.png",
	category = "forge",
    energy_required = 0.25,
    enabled = false,
    subgroup = "liquid-crafting-belts",
    order = "c-5",
    ingredients =
    {
	  {type="fluid", name="sludge", amount=1.5},
	  {type="fluid", name="molten-iron", amount=61.5},
	  {type="fluid", name="molten-copper", amount=54.375},
	  {type="fluid", name="lubricant", amount=6},
	  {type="fluid", name="molten-tungsten", amount=3},
	  {type="fluid", name="molten-lead", amount=2.25},
	  {type="fluid", name="molten-zinc", amount=8.025},
	  {type="fluid", name="molten-cobalt", amount=7.5},
	  {type="item", name="mold-belt", amount=1},
	  {type="item", name="plastic-bar", amount=100},
    },
    results = 
	{
	  {type="item", name="extreme-splitter", amount=1},
	  {type="item", name="mold-belt", amount=1},
	}
  },
  {
    type = "technology",
    name = "molds-belt",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-1a"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-1b"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-1c"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-2a"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-2b"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-2c"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-3a"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-3b"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-3c"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-4a"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-4b"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-4c"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-5a"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-5b"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-belt-5c"
      },
    },
    prerequisites = {"lava-04", "water-cleaning"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "molds-belt",
  },
}
)