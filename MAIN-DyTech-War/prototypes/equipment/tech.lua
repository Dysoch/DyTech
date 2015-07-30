data:extend(
{
  {
    type = "technology",
    name = "basic-laser-defense-equipment-1",
    icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
    prerequisites = {"basic-laser-defense-equipment", "silver-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-laser-defense-equipment-2"
      }
    },
    unit =
    {
      count = 300,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
	  },
      time = 30
    },
    order = "b-l-d-e-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "basic-laser-defense-equipment-2",
    icon = "__base__/graphics/technology/basic-laser-defense-equipment.png",
    prerequisites = {"basic-laser-defense-equipment-1", "tungsten-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "basic-laser-defense-equipment-3"
      }
    },
    unit =
    {
      count = 900,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
	  },
      time = 30
    },
    order = "b-l-d-e-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "energy-shield-mk3-equipment",
    icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
    prerequisites = {"energy-shield-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk3-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
	  },
      time = 30
    },
    order = "g-e-b",
	upgrade = true,
  },
  {
    type = "technology",
    name = "energy-shield-mk4-equipment",
    icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
    prerequisites = {"energy-shield-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk4-equipment"
      }
    },
    unit =
    {
      count = 400,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
	  },
      time = 30
    },
    order = "g-e-b",
	upgrade = true,
  },
  {
    type = "technology",
    name = "energy-shield-mk5-equipment",
    icon = "__base__/graphics/technology/energy-shield-mk2-equipment.png",
    prerequisites = {"energy-shield-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk5-equipment"
      }
    },
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
      time = 30
    },
    order = "g-e-b",
	upgrade = true,
  },
  {
    type = "technology",
    name = "battery-mk3-equipment",
    icon = "__base__/graphics/technology/battery-mk2-equipment.png",
    prerequisites = {"battery-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk3-equipment"
      }
    },
    unit =
    {
      count = 200,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
	  },
      time = 30
    },
    order = "g-i-b",
	upgrade = true,
  },
  {
    type = "technology",
    name = "battery-mk4-equipment",
    icon = "__base__/graphics/technology/battery-mk2-equipment.png",
    prerequisites = {"battery-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk4-equipment"
      }
    },
    unit =
    {
      count = 400,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
	  },
      time = 30
    },
    order = "g-i-b",
	upgrade = true,
  },
  {
    type = "technology",
    name = "battery-mk5-equipment",
    icon = "__base__/graphics/technology/battery-mk2-equipment.png",
    prerequisites = {"battery-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk5-equipment"
      }
    },
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
      time = 30
    },
    order = "g-i-b",
	upgrade = true,
  },
  {
    type = "technology",
    name = "solar-panel-equipment-2",
    icon = "__base__/graphics/technology/solar-panel-equipment.png",
    prerequisites = {"solar-panel-equipment"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-2"
      }
    },
    unit =
    {
      count = 100,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
	  },
      time = 15
    },
    order = "g-k"
  },
  {
    type = "technology",
    name = "solar-panel-equipment-3",
    icon = "__base__/graphics/technology/solar-panel-equipment.png",
    prerequisites = {"solar-panel-equipment-2"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-3"
      }
    },
    unit =
    {
      count = 200,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
	  },
      time = 15
    },
    order = "g-k"
  },
  {
    type = "technology",
    name = "solar-panel-equipment-4",
    icon = "__base__/graphics/technology/solar-panel-equipment.png",
    prerequisites = {"solar-panel-equipment-3"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-4"
      }
    },
    unit =
    {
      count = 500,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
	  },
      time = 15
    },
    order = "g-k"
  },
  {
    type = "technology",
    name = "solar-panel-equipment-5",
    icon = "__base__/graphics/technology/solar-panel-equipment.png",
    prerequisites = {"solar-panel-equipment-4"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-5"
      }
    },
    unit =
    {
      count = 1000,
      ingredients = 
	  {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
	  },
      time = 15
    },
    order = "g-k"
  },
  {
    type = "technology",
    name = "personal-roboport-equipment-1",
    icon = "__base__/graphics/technology/personal-roboport-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-equipment-1"
      },
    },
    prerequisites = {"personal-roboport-equipment"},
    unit = {
      count = 250,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "c-k-d-zz",
  },
  {
    type = "technology",
    name = "personal-roboport-equipment-2",
    icon = "__base__/graphics/technology/personal-roboport-equipment.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-roboport-equipment-2"
      },
    },
    prerequisites = {"personal-roboport-equipment-1"},
    unit = {
      count = 500,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "c-k-d-zz",
  },
}
)
