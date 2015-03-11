data:extend(
{ 
  {
    type = "technology",
    name = "capacitor-1",
    icon = "__CORE-DyTech-Core__/graphics/power-intermediates/capacitor-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "capacitor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "flux-capacitor-1"
      },
    },
    prerequisites = {"automation"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
      },
      time = 30
    },
    order = "capacitor-1",
  },
  {
    type = "technology",
    name = "capacitor-2",
    icon = "__CORE-DyTech-Core__/graphics/power-intermediates/capacitor-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "capacitor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "flux-capacitor-2"
      },
    },
    prerequisites = {"capacitor-1", "steel-processing"},
    unit =
    {
      count = 125,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 60
    },
    order = "capacitor-2",
	upgrade = true
  },
  {
    type = "technology",
    name = "capacitor-3",
    icon = "__CORE-DyTech-Core__/graphics/power-intermediates/capacitor-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "capacitor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "flux-capacitor-3"
      },
    },
    prerequisites = {"capacitor-2", "zinc-processing"},
    unit =
    {
      count = 175,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 120
    },
    order = "capacitor-3",
	upgrade = true
  },
  {
    type = "technology",
    name = "capacitor-4",
    icon = "__CORE-DyTech-Core__/graphics/power-intermediates/capacitor-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "capacitor-4"
      },
      {
        type = "unlock-recipe",
        recipe = "flux-capacitor-4"
      },
    },
    prerequisites = {"capacitor-3", "gold-processing"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 240
    },
    order = "capacitor-4",
	upgrade = true
  },
}
)