data:extend(
{
  {
    type = "technology",
    name = "gem-processing",
    icon = "__DyTech-Warfare__/graphics/technology/gem-processing.png",
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
        recipe = "compressor"
      },
	  {
        type = "unlock-recipe",
        recipe = "basic-mining-drill-gem"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 20
    },
    order = "g-p"
  },
}
)