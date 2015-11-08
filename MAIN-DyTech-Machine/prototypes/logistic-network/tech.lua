table.insert(data.raw["technology"]["logistic-system"].effects,{type = "unlock-recipe",recipe = "logistic-chest-storage-one"})

data:extend(
{
  {
    type = "technology",
    name = "logistic-system-1",
    icon = "__base__/graphics/technology/logistic-system.png",
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-1"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-1"
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
        recipe = "roboport-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "robot-charger-1"
      },
    },
    prerequisites = {"logistic-robotics", "logistic-system"},
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
    name = "logistic-system-2",
    icon = "__base__/graphics/technology/logistic-system.png",
    effects = 
	{
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider-2"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-passive-provider-2"
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
        recipe = "roboport-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "robot-charger-2"
      },
    },
    prerequisites = {"logistic-system-1"},
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