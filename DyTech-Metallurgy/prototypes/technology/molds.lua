data:extend(
{
  {
    type = "technology",
    name = "molds-01",
    icon = "__DyTech-Metallurgy__/graphics/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "clay"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-circuit"
      },
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
        recipe = "mold-tool"
      },
    },
    prerequisites = {"lava-smelting-03"},
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
    order = "molds-01",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-02",
    icon = "__DyTech-Metallurgy__/graphics/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-machine-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-2"
      },
    },
    prerequisites = {"molds-01"},
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
    order = "molds-02",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-03",
    icon = "__DyTech-Metallurgy__/graphics/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-machine-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-wire-3"
      },
    },
    prerequisites = {"molds-01"},
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
    order = "molds-03",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-04",
    icon = "__DyTech-Metallurgy__/graphics/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-machine-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-3"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-circuit-4"
      },
    },
    prerequisites = {"molds-01"},
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
    order = "molds-04",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-05",
    icon = "__DyTech-Metallurgy__/graphics/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-machine-ammo-basic"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-machine-ammo-advanced"
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
    prerequisites = {"molds-01"},
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
    order = "molds-05",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-06",
    icon = "__DyTech-Metallurgy__/graphics/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "metallurgy-machine-tool"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tool-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-tool-2"
      },
    },
    prerequisites = {"molds-01"},
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
    order = "molds-06",
	upgrade = true,
  },
}
)