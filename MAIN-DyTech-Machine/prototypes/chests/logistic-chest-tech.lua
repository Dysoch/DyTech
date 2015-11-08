data:extend(
{
  {
    type = "technology",
    name = "chest-3",
    icon = "__MAIN-DyTech-Machine__/graphics/chests/chest.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "smart-chest-medium"
      },
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
    icon = "__MAIN-DyTech-Machine__/graphics/chests/chest.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "smart-chest-big"
      },
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