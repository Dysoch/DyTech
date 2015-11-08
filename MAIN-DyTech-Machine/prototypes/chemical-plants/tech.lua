data:extend(
{
  {
    type = "technology",
    name = "oil-processing-1",
    icon = "__base__/graphics/technology/oil-gathering.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-1"
      },
    },
    prerequisites = {"oil-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "d-a"
  },
  {
    type = "technology",
    name = "oil-processing-2",
    icon = "__base__/graphics/technology/oil-gathering.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-2"
      },
    },
    prerequisites = {"oil-processing-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "d-a"
  },
}
)