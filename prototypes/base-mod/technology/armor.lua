data:extend(
{
  {
    type = "technology",
    name = "power-armor-3",
    icon = "__DyTech-Graphics__/graphics/technology/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk3"
      },
    },
    prerequisites = {"power-armor-2", "dytech-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"rubber", 1},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 90
    },
    order = "p-a-3"
  },
}
)