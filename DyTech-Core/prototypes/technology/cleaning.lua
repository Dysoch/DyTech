data:extend(
{
  {
    type = "technology",
    name = "water-cleaning",
    icon = "__DyTech-Core__/graphics/technology/water-cleaning.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "liquid-handler"
      },
      {
        type = "unlock-recipe",
        recipe = "dirty-water-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "dirty-water-stone"
      },
      {
        type = "unlock-recipe",
        recipe = "dirty-water-to-water"
      },
      {
        type = "unlock-recipe",
        recipe = "dirty-water-to-water-2"
      },
    },
    prerequisites = {"automation"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 10
    },
    order = "water-cleaning",
  },
}
)