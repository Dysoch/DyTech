data:extend(
{
  {
    type = "technology",
    name = "poison-capsule-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-capsule-1"
      },
    },
    prerequisites = {"military-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 45
    },
    order = "poison-capsule-1",
	upgrade = true
  },
  {
    type = "technology",
    name = "poison-capsule-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-capsule-2"
      },
    },
    prerequisites = {"poison-capsule-1"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 45
    },
    order = "poison-capsule-2",
	upgrade = true
  },
}
)