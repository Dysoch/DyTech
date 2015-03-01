data:extend(
{
  {
    type = "technology",
    name = "centrifuge",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/centrifuge.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-copper-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "sludge-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "copper-chunks"
      },
      {
        type = "unlock-recipe",
        recipe = "iron-chunks"
      },
    },
    prerequisites = {"oil-processing", "water-cleaning"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "centrifuge",
  },
}
)