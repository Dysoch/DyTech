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
    prerequisites = {"military-5"},
    unit =
    {
      count = 1000,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
      },
      time = 60
    },
    order = "m-8",
	upgrade = true
  },
  {
    type = "technology",
    name = "turrets-1",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gun-turret-1"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-2"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-3"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-4"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-5"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-6"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-7"
      },
    },
    prerequisites = {"turrets", "military-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 10
    },
    order = "a-j-a",
	upgrade = true
  },
  {
    type = "technology",
    name = "turrets-2",
    icon = "__base__/graphics/technology/turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "gun-turret-1-armored"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-2-armored"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-3-armored"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-4-armored"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-5-armored"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-6-armored"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-turret-7-armored"
      },
    },
    prerequisites = {"turrets-1"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 10
    },
    order = "a-j-a",
	upgrade = true
  },
}
)