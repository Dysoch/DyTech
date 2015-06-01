data:extend(
{
  {
    type = "technology",
    name = "ammo-1",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-magazine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "acid-magazine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "napalm-magazine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "plasma-magazine-1"
      },
    },
    prerequisites = {"turrets-1", "military-3", "acid-capsule-1", "napalm-capsule-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 10
    },
    order = "a-j-a",
	upgrade = true
  },
  {
    type = "technology",
    name = "ammo-2",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-magazine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "acid-magazine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "napalm-magazine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "plasma-magazine-2"
      },
    },
    prerequisites = {"ammo-1", "poison-capsule-1", "acid-capsule-2", "napalm-capsule-2"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 20
    },
    order = "a-j-a",
	upgrade = true
  },
  {
    type = "technology",
    name = "ammo-3",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-magazine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "acid-magazine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "napalm-magazine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "plasma-magazine-3"
      },
    },
    prerequisites = {"ammo-2", "poison-capsule-2", "acid-capsule-3", "napalm-capsule-3"},
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
      time = 40
    },
    order = "a-j-a",
	upgrade = true
  },
}
)