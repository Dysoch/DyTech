data:extend(
{
  {
    type = "technology",
    name = "chest-1",
    icon = "__DyTech-Graphics__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wooden-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-chest-medium"
      },
	  {
        type = "unlock-recipe",
        recipe = "steel-chest-medium"
      },
    },
    prerequisites = {"steel-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"sandbag", 1},
      },
      time = 30
    },
    order = "c-1",
    upgrade=true
  },
  {
    type = "technology",
    name = "chest-2",
    icon = "__DyTech-Graphics__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "wooden-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-chest-big"
      },
	  {
        type = "unlock-recipe",
        recipe = "steel-chest-big"
      },
    },
    prerequisites = {"chest-1"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"sandbag", 1},
      },
      time = 30
    },
    order = "c-2",
    upgrade=true
  },
}
)