data:extend(
{
  {
    type = "technology",
    name = "molds-01",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
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
    order = "molds-01",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-02",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-3"
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
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
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
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
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
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
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
}
)