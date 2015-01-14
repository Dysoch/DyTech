data:extend(
{
  {
    type = "technology",
    name = "flame-thrower-turret",
    icon = "__base__/graphics/technology/flame-thrower.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flame-thrower-turret"
      },
    },
    prerequisites = {"flame-thrower", "turrets"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "e-c-b"
  },
}
)