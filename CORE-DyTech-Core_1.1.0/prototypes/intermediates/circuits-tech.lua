data:extend(
{ 
  {
    type = "technology",
    name = "advanced-cables",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/bundled-wire.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bundled-wire"
      },
    },
    prerequisites = {"zinc-processing", "advanced-electronics"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 100
    },
    order = "advanced-cables",
  },
  {
    type = "technology",
    name = "advanced-processing-unit",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/advanced-processing-unit.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-processing-unit"
      },
    },
    prerequisites = {"advanced-cables"},
    unit =
    {
      count = 475,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 200
    },
    order = "advanced-processing-unit",
  },
}
)