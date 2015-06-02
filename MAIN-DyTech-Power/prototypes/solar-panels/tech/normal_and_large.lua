table.insert(data.raw["technology"]["solar-energy"].effects,{type = "unlock-recipe",recipe = "large-solar-panel-primary"})
table.insert(data.raw["technology"]["solar-energy"].effects,{type = "unlock-recipe",recipe = "solar-panel-secondary"})
table.insert(data.raw["technology"]["solar-energy"].effects,{type = "unlock-recipe",recipe = "large-solar-panel-secondary"})

data:extend(
{
  {
    type = "technology",
    name = "solar-energy-2",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-primary-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-secondary-mk2"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel-primary-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk2"
      },
    },
    prerequisites = {"solar-energy", "capacitor-1"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "solar-2",
	upgrade = true,
  },
  {
    type = "technology",
    name = "solar-energy-3",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-primary-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-secondary-mk3"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel-primary-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk3"
      },
    },
    prerequisites = {"solar-energy-2", "capacitor-2", "tin-processing"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "solar-3",
	upgrade = true,
  },
  {
    type = "technology",
    name = "solar-energy-4",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-primary-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-secondary-mk4"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel-primary-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk4"
      },
    },
    prerequisites = {"solar-energy-3", "capacitor-3", "zinc-processing"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "solar-4",
	upgrade = true,
  },
  {
    type = "technology",
    name = "solar-energy-5",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-primary-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "large-solar-panel-secondary-mk5"
      },
	  {
        type = "unlock-recipe",
        recipe = "solar-panel-primary-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk5"
      },
    },
    prerequisites = {"solar-energy-4", "capacitor-4", "gold-processing"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "solar-5",
	upgrade = true,
  },
}
)