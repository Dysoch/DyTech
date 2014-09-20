data:extend(
{
  {
    type = "technology",
    name = "tanks-1",
    icon = "__DyTech-Storage__/graphics/technology/tanks.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-2"
      },
    },
    prerequisites = {"steel-processing", "fluid-handling"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
    order = "t-1",
  },
  {
    type = "technology",
    name = "tanks-2",
    icon = "__DyTech-Storage__/graphics/technology/tanks.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-3"
      },
    },
    prerequisites = {"tanks-1"},
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
    order = "t-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "tanks-3",
    icon = "__DyTech-Storage__/graphics/technology/tanks.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-4"
      },
    },
    prerequisites = {"tanks-2"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "t-3",
	upgrade = true
  },
  {
    type = "technology",
    name = "tanks-4",
    icon = "__DyTech-Storage__/graphics/technology/tanks.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-5"
      },
    },
    prerequisites = {"tanks-3"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "t-4",
	upgrade = true
  },
}
)