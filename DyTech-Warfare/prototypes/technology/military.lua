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
        recipe = "sniper-magazine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "sniper-turret"
      },
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
        recipe = "laser-gun"
      },
      {
        type = "unlock-recipe",
        recipe = "battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "battery-3"
      },
    },
    prerequisites = {"military-6", "gem-processing", "battery", "laser"},
    unit =
    {
      count = 450,
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
  {
    type = "technology",
    name = "military-8",
    icon = "__DyTech-Warfare__/graphics/technology/military.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-shotgun"
      },
      {
        type = "unlock-recipe",
        recipe = "battery-shotgun-1"
      },
      {
        type = "unlock-recipe",
        recipe = "battery-shotgun-2"
      },
      {
        type = "unlock-recipe",
        recipe = "battery-shotgun-3"
      },
    },
    prerequisites = {"military-7"},
    unit =
    {
      count = 550,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "m-8"
  },
  {
    type = "technology",
    name = "flame-thrower-turret",
    icon = "__base__/graphics/technology/flame-thrower.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flame-thrower-turret"
      },
    },
    prerequisites = {"flame-thrower", "turrets"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "e-c-b"
  },
  {
    type = "technology",
    name = "combat-robotics-4",
    icon = "__base__/graphics/technology/combat-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "marauder-capsule"
      },
    },
    prerequisites = {"combat-robotics-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-p-b-b",
	upgrade = true
  },
  {
    type = "technology",
    name = "combat-robotics-5",
    icon = "__base__/graphics/technology/combat-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "sharpshooter-capsule"
      },
    },
    prerequisites = {"combat-robotics-4"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "e-p-b-b",
	upgrade = true
  },
  {
    type = "technology",
    name = "combat-robotics-6",
    icon = "__base__/graphics/technology/combat-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "frenzy-capsule"
      },
    },
    prerequisites = {"combat-robotics-5"},
    unit =
    {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 2},
        {"alien-science-pack", 1}
      },
      time = 45
    },
    order = "e-p-b-b",
	upgrade = true
  },
}
)