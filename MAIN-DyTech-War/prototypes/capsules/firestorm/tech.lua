data:extend(
{
  {
    type = "technology",
    name = "firestorm-capsule-1",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "firestorm-capsule-1"
      },
    },
    prerequisites = {"napalm-capsule-3"},
    unit =
    {
      count = 1500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 15
    },
    order = "firestorm-capsule-1",
	upgrade = true
  },
  {
    type = "technology",
    name = "firestorm-capsule-2",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "firestorm-capsule-2"
      },
    },
    prerequisites = {"firestorm-capsule-1"},
    unit =
    {
      count = 3000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "firestorm-capsule-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "firestorm-capsule-3",
    icon = "__base__/graphics/icons/poison-capsule.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "firestorm-capsule-3"
      },
    },
    prerequisites = {"firestorm-capsule-2"},
    unit =
    {
      count = 6000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 45
    },
    order = "firestorm-capsule-3",
	upgrade = true
  },
}
)