data:extend(
{
  {
    type = "technology",
    name = "chest-1",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wooden-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "steel-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "smart-chest-medium"
      },
    },
    prerequisites = {"steel-processing"},
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
    order = "c-1",
  },
  {
    type = "technology",
    name = "chest-2",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wooden-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "steel-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "smart-chest-big"
      },
    },
    prerequisites = {"chest-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "chest-3",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-medium"
      },
    },
    prerequisites = {"chest-2", "construction-robotics", "logistic-system"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "chest-4",
    icon = "__DyTech-Storage__/graphics/technology/chest.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-big"
      },
    },
    prerequisites = {"chest-3"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-4",
	upgrade = true,
  },
}
)