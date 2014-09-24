data:extend(
{
  {
    type = "technology",
    name = "lava-smelting-01",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
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
        recipe = "metallurgy-liquid-air"
      },
    },
    prerequisites = {"lava-01"},
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
    order = "lava-smelting-01",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-smelting-02",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
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
        recipe = "metallurgy-iron-plate"
      },
    },
    prerequisites = {"lava-smelting-01"},
    unit =
    {
      count = 350,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "lava-smelting-02",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-smelting-03",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
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
        recipe = "metallurgy-iron-carbonated"
      },
      {
        type = "unlock-recipe",
        recipe = "coal-splitting"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-steel-plate"
      },
    },
    prerequisites = {"lava-smelting-02"},
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
    order = "lava-smelting-03",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-smelting-04",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
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
    },
    prerequisites = {"lava-smelting-03"},
    unit =
    {
      count = 550,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "lava-smelting-04",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-smelting-05",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
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
        recipe = "tungsten-wall"
      },
    },
    prerequisites = {"lava-smelting-04"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "lava-smelting-05",
	upgrade = true,
  },
  {
    type = "technology",
    name = "lava-smelting-06",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-copper-tungsten"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-bronze"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-brass"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-electrum"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-gunmetal"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-copper-tungsten-alloy"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-bronze-alloy"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-brass-alloy"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-electrum-alloy"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-gunmetal-alloy"
      },
    },
    prerequisites = {"lava-smelting-05"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "lava-smelting-06",
	upgrade = true,
  },
}
)