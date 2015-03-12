data:extend(
{
  {
    type = "technology",
    name = "centrifuge",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/technology/centrifuge.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-wood-centrifuge"
      },
    },
    prerequisites = {"oil-processing", "water-cleaning"},
    unit =
    {
      count = 50,
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