--mk1
table.insert(data.raw["technology"]["solar-energy"].effects,{type = "unlock-recipe",recipe = "solar-panel-secondary"})

--[[
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
        recipe = "small-solar-panel-primary-mk2"
      },
      {
        type = "unlock-recipe",
        recipe = "small-solar-panel-secondary-mk2"
      },
    },
    prerequisites = {"solar-energy"},
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
        recipe = "solar-panel-primary-mk3"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk3"
      },
    },
    prerequisites = {"solar-energy-2"},
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
        recipe = "solar-panel-primary-mk4"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk4"
      },
    },
    prerequisites = {"solar-energy-3"},
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
        recipe = "solar-panel-primary-mk5"
      },
      {
        type = "unlock-recipe",
        recipe = "solar-panel-secondary-mk5"
      },
    },
    prerequisites = {"solar-energy-4"},
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
)]]