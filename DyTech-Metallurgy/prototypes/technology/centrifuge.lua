data:extend(
{
  {
    type = "technology",
    name = "centrifuge",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "centrifuge"
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