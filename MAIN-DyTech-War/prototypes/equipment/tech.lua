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
}
)
