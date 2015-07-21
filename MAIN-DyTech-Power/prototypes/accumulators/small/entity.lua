require "prototypes.internal-config"
require "prototypes.functions"

data:extend(
{
  {
    type = "accumulator",
    name = "small-basic-accumulator",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/icons/small/basic-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-basic-accumulator"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Small.Tier1,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Small.Tier1,
      output_flow_limit = Accumulators.Output.Small.Tier1
    },
	picture = SmallAccumulatorPictures(0.5, AccumulatorsTint.mk2),
    charge_animation = SmallAccumulatorChargePictures(0.5, AccumulatorsTint.mk2),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = SmallAccumulatorDischargePictures(0.5, AccumulatorsTint.mk2),
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
    name = "small-basic-accumulator-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/icons/small/basic-accumulator2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-basic-accumulator-mk2"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Small.Tier2,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Small.Tier2,
      output_flow_limit = Accumulators.Output.Small.Tier2
    },
    picture = SmallAccumulatorPictures(0.5, AccumulatorsTint.mk2),
    charge_animation = SmallAccumulatorChargePictures(0.5, AccumulatorsTint.mk2),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = SmallAccumulatorDischargePictures(0.5, AccumulatorsTint.mk2),
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
    name = "small-basic-accumulator-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/icons/small/basic-accumulator3.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-basic-accumulator-mk3"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Small.Tier3,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Small.Tier3,
      output_flow_limit = Accumulators.Output.Small.Tier3
    },
    picture = SmallAccumulatorPictures(0.5, AccumulatorsTint.mk3),
    charge_animation = SmallAccumulatorChargePictures(0.5, AccumulatorsTint.mk3),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = SmallAccumulatorDischargePictures(0.5, AccumulatorsTint.mk3),
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
    name = "small-basic-accumulator-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/icons/small/basic-accumulator4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-basic-accumulator-mk4"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "medium-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Small.Tier4,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Small.Tier4,
      output_flow_limit = Accumulators.Output.Small.Tier4
    },
    picture = SmallAccumulatorPictures(0.5, AccumulatorsTint.mk4),
    charge_animation = SmallAccumulatorChargePictures(0.5, AccumulatorsTint.mk4),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = SmallAccumulatorDischargePictures(0.5, AccumulatorsTint.mk4),
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
    name = "small-basic-accumulator-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/icons/small/basic-accumulator5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-basic-accumulator-mk5"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "medium-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Small.Tier5,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Small.Tier5,
      output_flow_limit = Accumulators.Output.Small.Tier5
    },
    picture = SmallAccumulatorPictures(0.5, AccumulatorsTint.mk5),
    charge_animation = SmallAccumulatorChargePictures(0.5, AccumulatorsTint.mk5),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = SmallAccumulatorDischargePictures(0.5, AccumulatorsTint.mk5),
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
    name = "small-basic-accumulator-mk6",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators/icons/small/basic-accumulator6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "small-basic-accumulator-mk6"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "medium-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Small.Tier6,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Small.Tier6,
      output_flow_limit = Accumulators.Output.Small.Tier6
    },
    picture = SmallAccumulatorPictures(0.5, AccumulatorsTint.mk6),
    charge_animation = SmallAccumulatorChargePictures(0.5, AccumulatorsTint.mk6),
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation = SmallAccumulatorDischargePictures(0.5, AccumulatorsTint.mk6),
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