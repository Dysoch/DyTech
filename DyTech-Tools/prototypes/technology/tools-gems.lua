data:extend(
{
  {
    type = "technology",
    name = "tools-06",
    icon = "__DyTech-Tools__/graphics/technology/tools.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-steel-axe"
      },
    },
    prerequisites = {"tools-05", "gem-processing"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 2},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 100
    },
    order = "tools-06",
	upgrade = true,
  },
}
)