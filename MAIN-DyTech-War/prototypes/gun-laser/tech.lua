data:extend(
{
  {
    type = "technology",
    name = "military-6",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-gun"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-clip-1"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-clip-2"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-clip-3"
      },
    },
    prerequisites = {"military-4", "battery", "laser"},
    unit =
    {
      count = 500,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "m-6",
	upgrade = true
  },
  {
    type = "technology",
    name = "military-7",
    icon = "__base__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-shotgun"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-clip-shotgun-1"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-clip-shotgun-2"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-clip-shotgun-3"
      },
    },
    prerequisites = {"military-6"},
    unit =
    {
      count = 750,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "m-7",
	upgrade = true
  },
}
)