data:extend(
{
  {
    type = "technology",
    name = "radar-1",
    icon = "__DyTech-Automation__/graphics/technology/radar.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk2"
      },
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-resource", 1},
        {"science-pack-industrial", 1},
        {"science-pack-tech", 1},
        {"science-pack-war", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-2",
    icon = "__DyTech-Automation__/graphics/technology/radar.png",
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
        {"science-pack-industrial", 1},
        {"science-pack-tech", 1},
        {"science-pack-war", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-3",
    icon = "__DyTech-Automation__/graphics/technology/radar.png",
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
      count = 300,
      ingredients =
      {
        {"science-pack-tech", 2},
        {"science-pack-war", 2},
        {"science-pack-advanced", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-4",
    icon = "__DyTech-Automation__/graphics/technology/radar.png",
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
      count = 100,
      ingredients =
      {
        {"science-pack-war", 10},
        {"science-pack-advanced", 4},
        {"science-pack-highly-advanced", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
}
)