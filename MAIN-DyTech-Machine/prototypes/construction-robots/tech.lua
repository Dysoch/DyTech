table.insert(data.raw["technology"]["construction-robotics"].effects,{type = "unlock-recipe",recipe = "repair-pack"})

data:extend(
{
  {
    type = "technology",
    name = "construction-robotics-1",
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "construction-robot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "repair-pack-2"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 15
      }
    },
    prerequisites = {"construction-robotics", "logistic-system-1"},
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
	upgrade = true,
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
        recipe = "construction-robot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "repair-pack-3"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 45
      }
    },
    prerequisites = {"construction-robotics-1", "logistic-system-2"},
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
	upgrade = true,
    order = "c-k-c",
  },
}
)