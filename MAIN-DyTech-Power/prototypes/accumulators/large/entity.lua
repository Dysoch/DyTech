require "prototypes.internal-config"

--[[data.raw["accumulator"]["basic-accumulator"].fast_replaceable_group = "accumulator"
data.raw["accumulator"]["basic-accumulator"].max_health = Health.Tier2
data.raw["accumulator"]["basic-accumulator"].resistances = Resistances.Tier2]]

data:extend(
{
  {
    type = "accumulator",
    name = "large-basic-accumulator-mk1",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/large/basic-accumulator1.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-basic-accumulator-mk1"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Large.Tier1,
      usage_priority = "terciary",
      input_flow_limit = "2100kW",
      output_flow_limit = "6000kW"
    },
    picture = AccumulatorPictures(1.33, AccumulatorsTint.mk1),
    charge_animation = AccumulatorChargePictures(1.33, AccumulatorsTint.mk1),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(1.33, AccumulatorsTint.mk1),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "accumulator",
    name = "large-basic-accumulator-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/large/basic-accumulator2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-basic-accumulator-mk2"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Large.Tier2,
      usage_priority = "terciary",
      input_flow_limit = "2100kW",
      output_flow_limit = "6000kW"
    },
    picture = AccumulatorPictures(1.33, AccumulatorsTint.mk2),
    charge_animation = AccumulatorChargePictures(1.33, AccumulatorsTint.mk2),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(1.33, AccumulatorsTint.mk2),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "accumulator",
    name = "large-basic-accumulator-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-mk3"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "60MJ",
      usage_priority = "terciary",
      input_flow_limit = "6000kW",
      output_flow_limit = "2100kW"
    },
    picture = AccumulatorPictures(1.33, AccumulatorsTint.mk3),
    charge_animation = AccumulatorChargePictures(1.33, AccumulatorsTint.mk3),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(1.33, AccumulatorsTint.mk3),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "accumulator",
    name = "large-basic-accumulator-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/large/basic-accumulator4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-basic-accumulator-mk4"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "120MJ",
      usage_priority = "terciary",
      input_flow_limit = "4500kW",
      output_flow_limit = "12000kW"
    },
    picture = AccumulatorPictures(1.33, AccumulatorsTint.mk4),
    charge_animation = AccumulatorChargePictures(1.33, AccumulatorsTint.mk4),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(1.33, AccumulatorsTint.mk4),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "accumulator",
    name = "large-basic-accumulator-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-basic-accumulator-mk5"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "120MJ",
      usage_priority = "terciary",
      input_flow_limit = "12000kW",
      output_flow_limit = "4500kW"
    },
    picture = AccumulatorPictures(1.33, AccumulatorsTint.mk5),
    charge_animation = AccumulatorChargePictures(1.33, AccumulatorsTint.mk5),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(1.33, AccumulatorsTint.mk5),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "accumulator",
    name = "large-basic-accumulator-mk6",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "large-basic-accumulator-mk6"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "900MJ",
      usage_priority = "terciary",
      input_flow_limit = "4500kW",
      output_flow_limit = "4500kW"
    },
    picture = AccumulatorPictures(1.33, AccumulatorsTint.mk6),
    charge_animation = AccumulatorChargePictures(1.33, AccumulatorsTint.mk6),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = AccumulatorDischargePictures(1.33, AccumulatorsTint.mk6),
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
}
)