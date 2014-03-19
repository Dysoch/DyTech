data:extend(
{
  {
    type = "technology",
    name = "boiler-2",
    icon = "__DyTech-Graphics__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk2"
      },
    },
    prerequisites = {"dytech-1", "engine-4", "rotor-2"},
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
    order = "b-2",
    upgrade=true
  },
  {
    type = "technology",
    name = "boiler-3",
    icon = "__DyTech-Graphics__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk3"
      },
    },
    prerequisites = {"boiler-2", "engine-5", "rotor-3", "circuit3"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"sandbag", 2},
      },
      time = 60
    },
    order = "b-3",
    upgrade=true
  },
  {
    type = "technology",
    name = "boiler-4",
    icon = "__DyTech-Graphics__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk4"
      },
    },
    prerequisites = {"boiler-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"sandbag", 2},
      },
      time = 60
    },
    order = "b-4",
    upgrade=true
  },
  {
    type = "technology",
    name = "boiler-5",
    icon = "__DyTech-Graphics__/graphics/technology/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-mk5"
      },
    },
    prerequisites = {"boiler-4"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"stone", 1},
		{"sandbag", 2},
      },
      time = 60
    },
    order = "b-5",
    upgrade=true
  },
}
)