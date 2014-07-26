data:extend(
{
  {
    type = "technology",
    name = "military-5",
    icon = "__DyTech-Warfare__/graphics/technology/military.png",
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
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
      },
      time = 60
    },
    order = "m-5"
  },
  {
    type = "technology",
    name = "military-6",
    icon = "__DyTech-Warfare__/graphics/technology/military.png",
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
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "m-6"
  },
  {
    type = "technology",
    name = "military-7",
    icon = "__DyTech-Warfare__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "diamond-bullet-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "emerald-bullet-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "topaz-bullet-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "ruby-bullet-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "sapphire-bullet-magazine"
      },
    },
    prerequisites = {"military-5", "gem-processing"},
    unit =
    {
      count = 150,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "m-7"
  },
}
)