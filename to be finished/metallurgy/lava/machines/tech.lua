data:extend(
{
  {
    type = "technology",
    name = "lava-01",
    icon = "__MAIN-DyTech-Machine__/graphics/metallurgy/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "geothermal-extractor"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-heater"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-heater-electric"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-cooler"
      },
    },
    prerequisites = {"frame-1", "advanced-electronics", "lead-processing"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "lava-01",
	upgrade = true,
  },
}
)