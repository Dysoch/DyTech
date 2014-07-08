data:extend(
{
  {
    type = "technology",
    name = "tools-05",
    icon = "__DyTech-Tools__/graphics/technology/tools.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ruby-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "sapphire-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "emerald-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "topaz-axe"
      },
      {
        type = "unlock-recipe",
        recipe = "diamond-axe"
      },
    },
    prerequisites = {"tools-04", "gem-processing"},
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
    order = "tools-05",
	upgrade = true,
  },
}
)