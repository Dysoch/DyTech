data:extend(
{
  {
    type = "technology",
    name = "automation-4",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-4"
      }
    },
    prerequisites = {"automation-3", "capacitor-2"},
    unit =
    {
      count = 300,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
	  },
      time = 60
    },
    order = "a-b-d",
	upgrade = true
  },
  {
    type = "technology",
    name = "automation-5",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-5"
      }
    },
    prerequisites = {"automation-4", "lead-processing", "capacitor-3"},
    unit =
    {
      count = 450,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
	  },
      time = 60
    },
    order = "a-b-e",
	upgrade = true
  },
  {
    type = "technology",
    name = "automation-6",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-6"
      }
    },
    prerequisites = {"automation-5", "tungsten-processing", "advanced-processing-unit", "frame-2"},
    unit =
    {
      count = 600,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
	  },
      time = 60
    },
    order = "a-b-f",
	upgrade = true
  },
  {
    type = "technology",
    name = "automation-7",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-7"
      }
    },
    prerequisites = {"automation-6", "capacitor-4", "frame-3"},
    unit =
    {
      count = 800,
      ingredients = 
	  {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
	  },
      time = 60
    },
    order = "a-b-g",
	upgrade = true
  },
}
)