data:extend(
{
  {
    type = "technology",
    name = "slowdown-capsule-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "slowdown-capsule-1"
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
    order = "slowdown-capsule-1",
	upgrade = true
  },
  {
    type = "technology",
    name = "slowdown-capsule-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "slowdown-capsule-2"
      },
    },
    prerequisites = {"slowdown-capsule-1"},
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
    order = "slowdown-capsule-2",
	upgrade = true
  },
}
)