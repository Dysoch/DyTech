data:extend(
{
  {
    type = "technology",
    name = "tanks-2",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank-dytech-1"
      },
      {
        type = "unlock-recipe",
        recipe = "battery-tank"
      },
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 450,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "e-c-c",
	upgrade = true
  },
  {
    type = "technology",
    name = "tanks-3",
    icon = "__base__/graphics/icons/tank.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank-dytech-2"
      },
    },
    prerequisites = {"tanks-2"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 20
    },
    order = "e-c-c",
	upgrade = true
  },
}
)