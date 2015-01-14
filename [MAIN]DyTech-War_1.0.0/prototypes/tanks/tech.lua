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
    prerequisites = {"tanks", "tungsten-processing"},
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
    order = "e-c-c"
  },
}
)