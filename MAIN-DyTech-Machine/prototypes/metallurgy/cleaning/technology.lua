data:extend(
{
  {
    type = "technology",
    name = "centrifuge-2",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/technology/centrifuge.png",
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
    prerequisites = {"oil-processing", "water-cleaning", "centrifuge"},
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