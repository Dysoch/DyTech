data:extend(
{
  {
    type = "technology",
    name = "advanced-electronics-3",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    prerequisites = {"advanced-electronics-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "science-pack-4"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "a-d-c",
  },
}
)