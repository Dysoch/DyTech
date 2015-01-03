data:extend(
{
  {
    type = "technology",
    name = "dytech-1",
    icon = "__DyTech-Graphics__/graphics/technology/dytech.png",
		effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "lab-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "recycler"
      },
	  {
        type = "unlock-recipe",
        recipe = "compressor"
      },
    },
    prerequisites = {"steel-processing", "automation-2"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 1
    },
    order = "d-t-1"
  },
  {
    type = "technology",
    name = "dytech-2",
    icon = "__DyTech-Graphics__/graphics/technology/dytech.png",
		effects =
    {
      {
        type = "unlock-recipe",
        recipe = "dytech-lab"
      },
	  {
        type = "unlock-recipe",
        recipe = "packing"
      },
	  {
        type = "unlock-recipe",
        recipe = "unpacking"
      },
    },
    prerequisites = {"dytech-1"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
      },
      time = 1
    },
    order = "d-t-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "dytech-3",
    icon = "__DyTech-Graphics__/graphics/technology/dytech.png",
		effects =
    {
      {
        type = "unlock-recipe",
        recipe = "radar-1"
      },
    },
    prerequisites = {"dytech-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 1
    },
    order = "d-t-3",
	upgrade = true,
  },  
  {
    type = "technology",
    name = "dytech-4",
    icon = "__DyTech-Graphics__/graphics/technology/dytech.png",
		effects =
    {
	  
    },
    prerequisites = {"dytech-3"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 2},
		{"science-pack-2", 2},
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 1
    },
    order = "d-t-4",
	upgrade = true,
  },  
}
)