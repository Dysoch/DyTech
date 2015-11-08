data:extend(
{
  {
    type = "technology",
    name = "storage-tanks-1",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-2"
      },
    },
    prerequisites = {"fluid-handling"},
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
    name = "storage-tanks-2",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-3"
      },
    },
    prerequisites = {"storage-tanks-1"},
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
    name = "storage-tanks-3",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-4"
      },
    },
    prerequisites = {"storage-tanks-2"},
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
    name = "storage-tanks-4",
    icon = "__MAIN-DyTech-Machine__/graphics/storage-tanks/icon/storage-tank-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "storage-tank-5"
      },
    },
    prerequisites = {"storage-tanks-3"},
    unit =
    {
      count = 750,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 30
    },
    order = "t-4",
	upgrade = true
  },
}
)