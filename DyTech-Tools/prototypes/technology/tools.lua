data:extend(
{
  {
    type = "technology",
    name = "tools-01",
    icon = "__DyTech-Tools__/graphics/technology/tools.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "stone-axe"
      },
    },
    unit =
    {
      count = 5,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 5
    },
    order = "tools-01",
	upgrade = false,
  },
  {
    type = "technology",
    name = "tools-02",
    icon = "__DyTech-Tools__/graphics/technology/tools.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "copper-axe"
      },
    },
    prerequisites = {"tools-01"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 2},
      },
      time = 20
    },
    order = "tools-02",
	upgrade = true,
  },
  {
    type = "technology",
    name = "tools-03",
    icon = "__DyTech-Tools__/graphics/technology/tools.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-axe"
      },
    },
    prerequisites = {"tools-02"},
    unit =
    {
      count = 30,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 30
    },
    order = "tools-03",
	upgrade = true,
  },
  {
    type = "technology",
    name = "tools-04",
    icon = "__DyTech-Tools__/graphics/technology/tools.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-steel-axe"
      },
    },
    prerequisites = {"tools-03", "steel-processing"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 2},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 50
    },
    order = "tools-04",
	upgrade = true,
  },
}
)