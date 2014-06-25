data:extend(
{
  {
    type = "technology",
    name = "boiler-2",
    icon = "__DyTech-Energy__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk2"
      },
    },
    prerequisites = {"miner-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 30
    },
    order = "b-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "boiler-3",
    icon = "__DyTech-Energy__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk3"
      },
    },
    prerequisites = {"boiler-2"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
      },
      time = 60
    },
    order = "b-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "boiler-4",
    icon = "__DyTech-Energy__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk4"
      },
    },
    prerequisites = {"boiler-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 60
    },
    order = "b-4",
	upgrade = true,
  },
  {
    type = "technology",
    name = "boiler-5",
    icon = "__DyTech-Energy__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk5"
      },
    },
    prerequisites = {"boiler-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 3},
        {"science-pack-3", 3},
      },
      time = 60
    },
    order = "b-5",
	upgrade = true,
  },
}
)