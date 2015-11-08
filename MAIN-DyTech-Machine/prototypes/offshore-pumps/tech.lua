data:extend(
{
  {
    type = "technology",
    name = "pump-1",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "offshore-pump-mk2"
      },
    },
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 150,
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
    name = "pump-2",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "offshore-pump-mk3"
      },
    },
    prerequisites = {"pump-1"},
    unit =
    {
      count = 225,
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
    name = "pump-3",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "offshore-pump-mk4"
      },
    },
    prerequisites = {"pump-2"},
    unit =
    {
      count = 300,
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
    name = "pump-4",
    icon = "__MAIN-DyTech-Machine__/graphics/offshore-pumps/offshore-pump2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "offshore-pump-mk5"
      },
    },
    prerequisites = {"pump-3"},
    unit =
    {
      count = 600,
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