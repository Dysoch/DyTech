data:extend(
{
  
  {
    type = "technology",
    name = "laser-turrets-1",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-5"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-6"
      },
    },
    prerequisites = {"laser-turrets"},
    unit =
    {
      count = 450,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "l-t-1",
	upgrade = true,
  },
  {
    type = "technology",
    name = "laser-turrets-2",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret-7"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-8"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-9"
      },
    },
    prerequisites = {"laser-turrets-1"},
    unit =
    {
      count = 550,
      ingredients =
      {
	    {"science-pack-1", 2}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "l-t-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "laser-turrets-3",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-turret-sniper-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-sniper-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "laser-turret-sniper-3"
      },
    },
    prerequisites = {"laser-turrets-2", "military-6"},
    unit =
    {
      count = 1000,
      ingredients =
      {
	    {"science-pack-1", 3}, 
		{"science-pack-2", 2}, 
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "l-t-3",
	upgrade = true,
  },
}
)