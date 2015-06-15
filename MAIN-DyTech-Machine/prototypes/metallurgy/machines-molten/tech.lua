data:extend(
{
  {
    type = "technology",
    name = "lava-02",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blast-furnace"
      },
      {
        type = "unlock-recipe",
        recipe = "forge"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-copper-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-copper-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-800"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1000"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1200"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-800-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1000-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1200-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-iron-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1400"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1600"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1400-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1600-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-iron-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "clay"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-plate"
      },
    },
    prerequisites = {"lava-01", "gold-processing", "tin-processing", "zinc-processing", "silver-processing"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "lava-02",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-03",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-iron-carbonated"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1800"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2000"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-1800-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2000-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-iron-carbonated"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-steel-plate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-steel-plate-2"
      },
    },
    prerequisites = {"lava-02"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "lava-03",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-04",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-tin-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-tin-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-zinc-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-zinc-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-lead-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-lead-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-gold-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-gold-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-silver-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-silver-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2200"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2400"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2200-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2400-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-tungsten-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-tungsten-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-ardite-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-ardite-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-cobalt-smelt"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-cobalt-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2600"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2800"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3000"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3200"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3400"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3600"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2600-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-2800-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3000-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3200-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3400-cooling"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-3600-cooling"
      },
    },
    prerequisites = {"lava-03"},
    unit =
    {
      count = 850,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "lava-04",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molten-machine-1",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blast-furnace-1"
      },
      {
        type = "unlock-recipe",
        recipe = "forge-1"
      },
    },
    prerequisites = {"lava-02"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "molten-machine-1",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molten-machine-2",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "blast-furnace-2"
      },
      {
        type = "unlock-recipe",
        recipe = "forge-2"
      },
    },
    prerequisites = {"molten-machine-1"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "molten-machine-2",
	upgrade = true,
  },
}
)