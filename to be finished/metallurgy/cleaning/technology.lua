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
        recipe = "clean-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-copper-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-tin-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-zinc-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-lead-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-silver-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-gold-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-tungsten-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-cobalt-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "clean-ardite-ore"
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