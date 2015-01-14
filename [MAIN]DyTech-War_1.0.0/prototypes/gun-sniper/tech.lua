data:extend(
{
  {
    type = "technology",
    name = "military-5",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "sniper-magazine-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "sniper-magazine-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "sniper"
      },
    },
    prerequisites = {"military-4", "zinc-processing", "tin-processing", "lead-processing", "tungsten-processing", "cobalt-processing", "advanced-electronics"},
    unit =
    {
      count = 150,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
      },
      time = 60
    },
    order = "m-5"
  },
}
)