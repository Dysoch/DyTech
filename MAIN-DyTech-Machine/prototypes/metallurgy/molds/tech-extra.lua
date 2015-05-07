data:extend(
{
  {
    type = "technology",
    name = "molds-gear",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-gear"
      },
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
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-4"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-5"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-6"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-7"
      },
      {
        type = "unlock-recipe",
        recipe = "mold-crafting-gear-4"
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
    order = "molds-gear",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-wire",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-wire"
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
    order = "molds-wire",
	upgrade = true,
  },
  {
    type = "technology",
    name = "molds-circuit",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/mold.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mold-circuit"
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
    prerequisites = {"molds-wire"},
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
    order = "molds-circuit",
	upgrade = true,
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
	upgrade = true,
  },
}
)