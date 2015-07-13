require "prototypes.internal-config"
require "prototypes.functions"

require "prototypes.solar-panels.solar-types"
function CreateSolarPanel(name, icon, size, tier, collisionBox, selectionBox, outputType, picture)
{
    type = "solar-panel",
    ["name"] = name,
    ["icon"] = icon,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = name},
    ["max_health"] = nil,
	  ["resistances"] = nil,
    corpse = "big-remnants",
    ["collision_box"] = nil,
    ["selection_box"] = nil,
	  fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = outputType.."-output"
    },
    ["picture"] = ,
    ["production"] = nil
}
end

data:extend(
{
  {
    type = "solar-panel",
    name = "small-solar-panel-primary",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary"},
    max_health = Health.Tier1,
	resistances = Resistances.Tier1,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture = SolarPictures(1, SolarTint.mk1),
    production = SolarPanels.Small.Tier1
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary"},
    max_health = Health.Tier1,
	resistances = Resistances.Tier1,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture = SolarPictures(1, SolarTint.mk1),
    production = SolarPanels.Small.Tier1
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture = SolarPictures(1, SolarTint.mk2),
    production = SolarPanels.Small.Tier2
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture = SolarPictures(1, SolarTint.mk2),
    production = SolarPanels.Small.Tier2
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture = SolarPictures(1, SolarTint.mk3),
    production = SolarPanels.Small.Tier3
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture = SolarPictures(1, SolarTint.mk3),
    production = SolarPanels.Small.Tier3
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk4"},
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture = SolarPictures(1, SolarTint.mk4),
    production = SolarPanels.Small.Tier4
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk4"},
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture = SolarPictures(1, SolarTint.mk4),
    production = SolarPanels.Small.Tier4
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-primary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-primary-mk5"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture = SolarPictures(1, SolarTint.mk5),
    production = SolarPanels.Small.Tier5
  },
  {
    type = "solar-panel",
    name = "small-solar-panel-secondary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/small/icons/solar-panel5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-solar-panel-secondary-mk5"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "big-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
	fast_replaceable_group =  "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture = SolarPictures(1, SolarTint.mk5),
    production = SolarPanels.Small.Tier5
  },
}
)