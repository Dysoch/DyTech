data:extend(
{
  {
    type = "technology",
    name = "gem-processing",
    icon = "__DyTech-Graphics__/graphics/technology/gem-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gem-crusher"
      },
	  {
        type = "unlock-recipe",
        recipe = "gem-grinder"
      },
	  {
        type = "unlock-recipe",
        recipe = "gem-polisher"
      },
	  {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-gem"
      },
    },
    prerequisites = {"dytech-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 1},
        {"copper-plate-1", 1}
      },
      time = 20
    },
    order = "g-p"
  },
}
)