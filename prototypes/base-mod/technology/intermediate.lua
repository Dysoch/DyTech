data:extend(
{
  {
    type = "technology",
    name = "wheel",
    icon = "__DyTech-Graphics__/graphics/technology/wheel.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wheel"
      }
    },
    prerequisites = {"rubber"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"rubber", 1},
		{"sandbag", 1},
      },
      time = 40
    },
    order = "w"
  },
}
)