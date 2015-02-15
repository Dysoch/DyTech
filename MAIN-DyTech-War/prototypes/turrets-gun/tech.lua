data:extend(
{
  {
    type = "technology",
    name = "military-8",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sniper-turret"
      },
    },
    prerequisites = {"military-5", "advanced-processing-unit"},
    unit =
    {
      count = 750,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
      },
      time = 60
    },
    order = "m-8"
  },
}
)