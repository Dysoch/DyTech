data:extend(
{
  {
    type = "technology",
    name = "water-cleaning",
    icon = "__CORE-DyTech-Core__/graphics/machines/water-cleaning.png",
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
      {
        type = "unlock-recipe",
        recipe = "dirty-water-stone-sand-random"
      },
    },
    prerequisites = {"automation"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 10
    },
    order = "water-cleaning",
  },
}
)