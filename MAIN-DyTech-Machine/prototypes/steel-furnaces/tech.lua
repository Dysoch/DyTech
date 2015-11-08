data:extend(
{
  {
    type = "technology",
    name = "advanced-material-processing-3",
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk2"
      },
    },
    prerequisites = {"advanced-material-processing-2"},
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
    order = "c-c-c",
	upgrade = true
  },
  {
    type = "technology",
    name = "advanced-material-processing-4",
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk3"
      },
    },
    prerequisites = {"advanced-material-processing-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-c-d",
	upgrade = true
  },
  {
    type = "technology",
    name = "advanced-material-processing-5",
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk4"
      },
    },
    prerequisites = {"advanced-material-processing-4"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-c-e",
	upgrade = true
  },
  {
    type = "technology",
    name = "advanced-material-processing-6",
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk5"
      },
    },
    prerequisites = {"advanced-material-processing-5"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "c-c-f",
	upgrade = true
  },
}
)