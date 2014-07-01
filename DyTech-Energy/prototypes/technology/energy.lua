data:extend(
{
  {
    type = "technology",
    name = "energy-1",
    icon = "__DyTech-Energy__/graphics/technology/energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-to-ground-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "small-pump-mk2"
      },
    },
    prerequisites = {"oil-processing"},
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
    name = "energy-2",
    icon = "__DyTech-Energy__/graphics/technology/energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-to-ground-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "small-pump-mk3"
      },
    },
    prerequisites = {"energy-1"},
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
    name = "energy-3",
    icon = "__DyTech-Energy__/graphics/technology/energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-to-ground-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "small-pump-mk4"
      },
    },
    prerequisites = {"energy-2"},
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
    name = "energy-4",
    icon = "__DyTech-Energy__/graphics/technology/energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-to-ground-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "small-pump-mk5"
      },
    },
    prerequisites = {"energy-3"},
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