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
    prerequisites = {"automation-3"},
    unit =
    {
      count = 200,
      ingredients = 
	  {
        {"science-pack-nature", 1},
        {"science-pack-resource", 1},
        {"science-pack-industrial", 1},
        {"science-pack-fluid", 1},
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
    prerequisites = {"automation-4"},
    unit =
    {
      count = 300,
      ingredients = 
	  {
        {"science-pack-nature", 1},
        {"science-pack-resource", 1},
        {"science-pack-industrial", 1},
        {"science-pack-fluid", 1},
        {"science-pack-tech", 1},
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
    prerequisites = {"automation-5"},
    unit =
    {
      count = 400,
      ingredients = 
	  {
        {"science-pack-industrial", 2},
        {"science-pack-fluid", 2},
        {"science-pack-tech", 2},
        {"science-pack-advanced", 1},
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
    prerequisites = {"automation-6"},
    unit =
    {
      count = 500,
      ingredients = 
	  {
        {"science-pack-industrial", 5},
        {"science-pack-fluid", 5},
        {"science-pack-tech", 5},
        {"science-pack-advanced", 2},
        {"science-pack-highly-advanced", 1},
	  },
      time = 60
    },
    order = "a-b-g",
	upgrade = true
  },
}
)