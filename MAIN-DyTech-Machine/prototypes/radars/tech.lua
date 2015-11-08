data:extend(
{
  {
    type = "technology",
    name = "radar-1",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk2"
      },
    },
    prerequisites = {},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-2",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk3"
      },
    },
    prerequisites = {"radar-1"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-3",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk4"
      },
    },
    prerequisites = {"radar-2"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-4",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk5"
      },
    },
    prerequisites = {"radar-3"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
}
)