data:extend(
{
  {
    type = "technology",
    name = "military-5",
    icon = "__DyTech-Graphics__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sniper"
      },
	        {
        type = "unlock-recipe",
        recipe = "sniper-magazine"
      }
    },
    prerequisites = {"military-4"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"iron-plate-1", 1},
		{"copper-plate-1", 1},
		{"steel-plate-1", 1},
		{"sandbag", 1},
      },
      time = 60
    },
    order = "m-5"
  },
  {
    type = "technology",
    name = "military-6",
    icon = "__DyTech-Graphics__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sniper-turret"
      },
    },
    prerequisites = {"military-5"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"iron-plate-1", 2},
		{"copper-plate-1", 2},
		{"steel-plate-1", 2},
		{"sandbag", 2},
      },
      time = 90
    },
    order = "m-6"
  },
}
)