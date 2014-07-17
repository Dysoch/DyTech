data:extend(
{
  {
    type = "technology",
    name = "logistic-robotics-3",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "capacity-logistic-robot-1"
      },
    },
    prerequisites = {"logistic-robotics-2", "advanced-electronics-2"},
    unit = 
	{
      count = 500,
      ingredients = 
	  {
        {"science-pack-1", 10},
        {"science-pack-2", 5},
		{"science-pack-3", 2},
		{"science-pack-4", 1},
		{"alien-science-pack", 5},
      },
      time = 90
    },
	upgrade = true,
    order = "l-r-3",
  },
}
)