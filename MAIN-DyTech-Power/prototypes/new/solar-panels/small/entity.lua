require "prototypes.internal-config"

--[[data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel" 
data.raw["solar-panel"]["solar-panel"].max_health = Health.Tier1
data.raw["solar-panel"]["solar-panel"].resistances = Resistances.Tier1
data.raw["solar-panel"]["solar-panel"].production = SolarPanels.Tier1]]

data:extend(
{
  {
    type = "solar-panel",
    name = "small-solar-panel-primary",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary"},
    max_health = Health.Small.Tier1,
	resistances = Resistances.Small.Tier1,
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
      filename = "__MAIN-Dytech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Small.Tier1
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary"},
    max_health = Health.Small.Tier1,
	resistances = Resistances.Small.Tier1,
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
      filename = "__MAIN-Dytech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = SolarPanels.Small.Tier1
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk2"},
    max_health = Health.Small.Tier3,
	resistances = Resistances.Small.Tier3,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk2
    },
    production = SolarPanels.Small.Tier2
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk2"},
    max_health = Health.Small.Tier3,
	resistances = Resistances.Small.Tier3,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk2
    },
    production = SolarPanels.Small.Tier2
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk3"},
    max_health = Health.Small.Tier5,
	resistances = Resistances.Small.Tier5,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk3
    },
    production = SolarPanels.Small.Tier3
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk3"},
    max_health = Health.Small.Tier5,
	resistances = Resistances.Small.Tier5,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk3
    },
    production = SolarPanels.Small.Tier3
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk4"},
    max_health = Health.Small.Tier7,
	resistances = Resistances.Small.Tier7,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk4
    },
    production = SolarPanels.Small.Tier4
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk4"},
    max_health = Health.Small.Tier7,
	resistances = Resistances.Small.Tier7,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk4
    },
    production = SolarPanels.Small.Tier4
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk5"},
    max_health = Health.Small.Tier9,
	resistances = Resistances.Small.Tier9,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk5
    },
    production = SolarPanels.Small.Tier5
  },
  {
    type = "solar-panel",
    name = "solar-panel-secondary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk5"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
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
      filename = "__MAIN-DyTech-Power__/graphics/solar-panels/small/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96,
	  tint = Tint.mk5
    },
    production = SolarPanels.Small.Tier5
  },
}
)