data:extend(
{
  {
    type = "technology",
    name = "radar-1",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk2"
      },
    },
    prerequisites = {"tin-processing", "silver-processing", "advanced-electronics"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-2",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk3"
      },
    },
    prerequisites = {"radar-1", "frame-1", "lead-processing"},
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
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-3",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk4"
      },
    },
    prerequisites = {"radar-2", "ardite-processing", "tungsten-processing", "advanced-processing-unit", "frame-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "radar",
	upgrade = true
  },
  {
    type = "technology",
    name = "radar-4",
    icon = "__MAIN-DyTech-Machine__/graphics/radars/icon/radar-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-mk5"
      },
    },
    prerequisites = {"radar-3", "frame-3", "cobalt-processing"},
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
    order = "radar",
	upgrade = true
  },
}
)