data:extend(
{
  {
    type = "technology",
    name = "extractor-1",
    icon = "__DyTech-Automation__/graphics/technology/extractor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack-mk2"
      },
    },
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-resource", 1},
        {"science-pack-industrial", 1},
        {"science-pack-fluid", 1},
        {"science-pack-tech", 1},
      },
      time = 30
    },
    order = "extractor",
	upgrade = true
  },
  {
    type = "technology",
    name = "extractor-2",
    icon = "__DyTech-Automation__/graphics/technology/extractor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack-mk3"
      },
    },
    prerequisites = {"extractor-1"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-resource", 1},
        {"science-pack-industrial", 1},
        {"science-pack-fluid", 1},
        {"science-pack-tech", 1},
        {"science-pack-advanced", 1},
      },
      time = 30
    },
    order = "extractor",
	upgrade = true
  },
  {
    type = "technology",
    name = "extractor-3",
    icon = "__DyTech-Automation__/graphics/technology/extractor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack-mk4"
      },
    },
    prerequisites = {"extractor-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-resource", 2},
        {"science-pack-industrial", 2},
        {"science-pack-fluid", 2},
        {"science-pack-tech", 2},
        {"science-pack-advanced", 2},
        {"science-pack-nuclear", 1},
      },
      time = 30
    },
    order = "extractor",
	upgrade = true
  },
  {
    type = "technology",
    name = "extractor-4",
    icon = "__DyTech-Automation__/graphics/technology/extractor.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack-mk5"
      },
    },
    prerequisites = {"extractor-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-resource", 16},
        {"science-pack-industrial", 16},
        {"science-pack-fluid", 16},
        {"science-pack-tech", 16},
        {"science-pack-advanced", 4},
        {"science-pack-nuclear", 4},
        {"science-pack-highly-advanced", 1},
      },
      time = 30
    },
    order = "extractor",
	upgrade = true
  },
}
)