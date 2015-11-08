data:extend(
{
  {
    type = "technology",
    name = "extractor-1",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-2.png",
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
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "extractor",
	upgrade = true
  },
  {
    type = "technology",
    name = "extractor-2",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-2.png",
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
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "extractor",
	upgrade = true
  },
  {
    type = "technology",
    name = "extractor-3",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-2.png",
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
      count = 650,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 60
    },
    order = "extractor",
	upgrade = true
  },
  {
    type = "technology",
    name = "extractor-4",
    icon = "__MAIN-DyTech-Machine__/graphics/pumpjacks/pumpjack-2.png",
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
      count = 750,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 90
    },
    order = "extractor",
	upgrade = true
  },
}
)