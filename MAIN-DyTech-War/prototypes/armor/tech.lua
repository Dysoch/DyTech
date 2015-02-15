data:extend(
{
  {
    type = "technology",
    name = "power-armor-3",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk3"
      },
    },
    prerequisites = {"power-armor-2", "cobalt-processing", "tungsten-processing", "ardite-processing"},
    unit =
    {
      count = 1500,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "p-a-3"
  },
}
)