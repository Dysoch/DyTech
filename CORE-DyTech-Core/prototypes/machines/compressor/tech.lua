data:extend(
{
  {
    type = "technology",
    name = "gem-processing",
    icon = "__CORE-DyTech-Core__/graphics/machines/dytech-compressor-icon.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "compressor"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1},
      },
      time = 20
    },
    order = "g-p"
  },
}
)