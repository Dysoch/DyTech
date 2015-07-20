require "prototypes.internal-config"
require "prototypes.functions"

data:extend(
{
  {
    type = "solar-panel",
    name = "large-solar-panel-primary",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-primary"},
    max_health = Health.Tier1,
	resistances = Resistances.Tier1,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group = "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk1),
    production = SolarPanels.Large.Tier1
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-secondary",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-secondary"},
    max_health = Health.Tier1,
	resistances = Resistances.Tier1,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group = "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk1),
    production = SolarPanels.Large.Tier1
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-primary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-primary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group = "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk2),
    production = SolarPanels.Large.Tier2
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-secondary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-secondary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk2),
    production = SolarPanels.Large.Tier2
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-primary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-primary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk3),
    production = SolarPanels.Large.Tier3
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-secondary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-secondary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk3),
    production = SolarPanels.Large.Tier3
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-primary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-primary-mk4"},
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk4),
    production = SolarPanels.Large.Tier4
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-secondary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-secondary-mk4"},
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk4),
    production = SolarPanels.Large.Tier4
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-primary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-primary-mk5"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk5),
    production = SolarPanels.Large.Tier5
  },
  {
    type = "solar-panel",
    name = "large-solar-panel-secondary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/large/icons/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-solar-panel-secondary-mk5"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture = SolarPictures(3, SolarTint.mk5),
    production = SolarPanels.Large.Tier5
  },
}
)