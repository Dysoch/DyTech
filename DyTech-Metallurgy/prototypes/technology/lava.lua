data:extend(
{
  {
    type = "technology",
    name = "lava-01",
    icon = "__DyTech-Metallurgy__/graphics/technology/lava.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "air-intake"
      },
      {
        type = "unlock-recipe",
        recipe = "geothermal-extractor"
      },
      {
        type = "unlock-recipe",
        recipe = "lava-handler"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgy-liquid-air"
      },
    },
    prerequisites = {"oil-processing"},
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