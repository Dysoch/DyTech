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
    },
    prerequisites = {"lava-01"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-1", 1},
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
        {"science-pack-1", 1},
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
        recipe = "centrifuge"
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
        {"science-pack-1", 1},
      },
      time = 30
    },
    order = "lava-smelting-03",
	upgrade = true,
  },
}
)