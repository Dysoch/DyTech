require "prototypes.internal-config"

--[[data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel" 
data.raw["solar-panel"]["solar-panel"].max_health = Health.Normal.Tier1
data.raw["solar-panel"]["solar-panel"].resistances = Resistances.Normal.Tier1
data.raw["solar-panel"]["solar-panel"].production = SolarPanels.Normal.Tier1]]

data:extend(
{
  {
    type = "solar-panel",
    name = "solar-panel-secondary",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-secondary"},
    max_health = Health.Normal.Tier1,
	resistances = Resistances.Normal.Tier1,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier1
  },
  {
    type = "solar-panel",
    name = "solar-panel-primary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-primary-mk2"},
    max_health = Health.Normal.Tier3,
	resistances = Resistances.Normal.Tier3,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-2.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier2
  },
  {
    type = "solar-panel",
    name = "solar-panel-secondary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-secondary-mk2"},
    max_health = Health.Normal.Tier3,
	resistances = Resistances.Normal.Tier3,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-2.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier2
  },
  {
    type = "solar-panel",
    name = "solar-panel-primary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-primary-mk3"},
    max_health = Health.Normal.Tier5,
	resistances = Resistances.Normal.Tier5,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-3.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier3
  },
  {
    type = "solar-panel",
    name = "solar-panel-secondary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-secondary-mk3"},
    max_health = Health.Normal.Tier5,
	resistances = Resistances.Normal.Tier5,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-3.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier3
  },
  {
    type = "solar-panel",
    name = "solar-panel-primary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-primary-mk4"},
    max_health = Health.Normal.Tier7,
	resistances = Resistances.Normal.Tier7,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-4.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier4
  },
  {
    type = "solar-panel",
    name = "solar-panel-secondary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-secondary-mk4"},
    max_health = Health.Normal.Tier7,
	resistances = Resistances.Normal.Tier7,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-4.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier4
  },
  {
    type = "solar-panel",
    name = "solar-panel-primary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-primary-mk5"},
    max_health = Health.Normal.Tier9,
	resistances = Resistances.Normal.Tier9,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-5.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier5
  },
  {
    type = "solar-panel",
    name = "solar-panel-secondary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-secondary-mk5"},
    max_health = Health.Normal.Tier9,
	resistances = Resistances.Normal.Tier9,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels-normal/solar-panel-5.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Normal.Tier5
  },
}
)