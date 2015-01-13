data:extend(
{
  {
    type = "technology",
    name = "logistic-robotics-1",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-1"
      },
    },
    prerequisites = {"logistic-robotics", "logistic-system-1"},
    unit = 
	{
      count = 250,
      ingredients = 
	  {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
		{"science-pack-3", 1},
      },
      time = 60
    },
	upgrade = true,
    order = "l-r-1",
  },
  {
    type = "technology",
    name = "logistic-robotics-2",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-2"
      },
    },
    prerequisites = {"logistic-robotics-1", "logistic-system-2"},
    unit = 
	{
      count = 250,
      ingredients = 
	  {
        {"science-pack-1", 5},
        {"science-pack-2", 4},
		{"science-pack-3", 1},
		{"alien-science-pack", 4},
      },
      time = 90
    },
	upgrade = true,
    order = "l-r-2",
  },
}
)