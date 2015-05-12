data:extend(
{
  {
    type = "technology",
    name = "radiation-capsule-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radiation-capsule-1"
      },
    },
    prerequisites = {"military-3"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 15
    },
    order = "radiation-capsule-1",
	upgrade = true
  },
  {
    type = "technology",
    name = "radiation-capsule-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radiation-capsule-2"
      },
    },
    prerequisites = {"radiation-capsule-1"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "radiation-capsule-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "radiation-capsule-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radiation-capsule-3"
      },
    },
    prerequisites = {"radiation-capsule-2"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 45
    },
    order = "radiation-capsule-3",
	upgrade = true
  },
}
)