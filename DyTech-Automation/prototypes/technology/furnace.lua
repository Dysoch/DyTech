data:extend(
{
  {
    type = "technology",
    name = "advanced-material-processing-3",
    icon = "__DyTech-Automation__/graphics/technology/furnace.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit1"
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
    icon = "__DyTech-Automation__/graphics/technology/furnace.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit2"
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
    icon = "__DyTech-Automation__/graphics/technology/furnace.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit3"
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
    icon = "__DyTech-Automation__/graphics/technology/furnace.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "steel-furnace-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "item-exit4"
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
      },
      time = 30
    },
    order = "c-c-f",
	upgrade = true
  },
}
)