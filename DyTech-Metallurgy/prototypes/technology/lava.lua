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
        recipe = "geothermal-extractor"
      },
    },
    prerequisites = {"oil-processing", "centrifuge"},
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