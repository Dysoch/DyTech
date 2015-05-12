data:extend(
{
  {
    type = "technology",
    name = "napalm-capsule-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "napalm-capsule-1"
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
    order = "napalm-capsule-1",
	upgrade = true
  },
  {
    type = "technology",
    name = "napalm-capsule-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "napalm-capsule-2"
      },
    },
    prerequisites = {"napalm-capsule-1"},
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
    order = "napalm-capsule-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "napalm-capsule-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "napalm-capsule-3"
      },
    },
    prerequisites = {"napalm-capsule-2"},
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
    order = "napalm-capsule-3",
	upgrade = true
  },
}
)