data:extend(
{
  {
    type = "technology",
    name = "power-armor-3",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk3"
      },
    },
    prerequisites = {"power-armor-2"},
    unit =
    {
      count = 1500,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1}
      },
      time = 90
    },
    order = "p-a-3"
  },
  {
    type = "technology",
    name = "power-armor-4",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk4"
      },
    },
    prerequisites = {"power-armor-3"},
    unit =
    {
      count = 2000,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 90
    },
    order = "p-a-4"
  },
  {
    type = "technology",
    name = "power-armor-5",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk5"
      },
    },
    prerequisites = {"power-armor-4"},
    unit =
    {
      count = 2500,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 90
    },
    order = "p-a-5"
  },
  {
    type = "technology",
    name = "power-armor-6",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk6"
      },
    },
    prerequisites = {"power-armor-5"},
    unit =
    {
      count = 3000,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 90
    },
    order = "p-a-6"
  },
  {
    type = "technology",
    name = "power-armor-7",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-armor-mk7"
      },
    },
    prerequisites = {"power-armor-6"},
    unit =
    {
      count = 3500,
      ingredients =
      {
	    {"science-pack-1", 1}, 
		{"science-pack-2", 1}, 
		{"science-pack-3", 1},
		{"alien-science-pack", 1},
      },
      time = 90
    },
    order = "p-a-7"
  },
}
)