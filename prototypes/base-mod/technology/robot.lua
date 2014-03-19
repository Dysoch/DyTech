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
        recipe = "logistic-chest-provider-1"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-1"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-1"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "roboport-1"
      },
    },
    prerequisites = {"dytech-2", "logistic-robotics"},
    unit = 
	{
      count = 250,
      ingredients = 
	  {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"sandbag", 1},
      },
      time = 60
    },
	upgrade = "true",
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
        recipe = "logistic-chest-provider-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "roboport-2"
      },
    },
    prerequisites = {"logistic-robotics-1"},
    unit = 
	{
      count = 250,
      ingredients = 
	  {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"sandbag", 2},
      },
      time = 90
    },
	upgrade = "true",
    order = "l-r-2",
  },
  {
    type = "technology",
    name = "construction-robotics-1",
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport-1"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-provider-1"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot-1"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 10
      }
    },
    prerequisites = {"construction-robotics"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 45
    },
	upgrade = "true",
    order = "c-k-b",
  },
  {
    type = "technology",
    name = "construction-robotics-2",
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-provider-2"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot-2"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 15
      }
    },
    prerequisites = {"construction-robotics-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 60
    },
	upgrade = "true",
    order = "c-k-c",
  },
}
)