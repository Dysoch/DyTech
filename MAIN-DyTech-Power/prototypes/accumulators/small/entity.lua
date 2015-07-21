require "prototypes.internal-config"

data.raw["accumulator"]["basic-accumulator"].fast_replaceable_group = "accumulator"
data.raw["accumulator"]["basic-accumulator"].max_health = Health.Tier2
data.raw["accumulator"]["basic-accumulator"].resistances = Resistances.Tier2
data.raw["accumulator"]["basic-accumulator"].energy_source.buffer_capacity = Accumulators.Buffer.Normal.Tier1
data.raw["accumulator"]["basic-accumulator"].energy_source.input_flow_limit = Accumulators.Input.Normal.Tier1
data.raw["accumulator"]["basic-accumulator"].energy_source.output_flow_limit = Accumulators.Output.Normal.Tier1

data:extend(
{
  {
    type = "accumulator",
    name = "basic-accumulator-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-mk2"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Normal.Tier2,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Normal.Tier2,
      output_flow_limit = Accumulators.Output.Normal.Tier2
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-2.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-charge-animation-2.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-discharge-animation-2.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
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
    name = "basic-accumulator-mk3",
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
      buffer_capacity = Accumulators.Buffer.Normal.Tier3,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Normal.Tier3,
      output_flow_limit = Accumulators.Output.Normal.Tier3
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-3.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-charge-animation-3.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-discharge-animation-3.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
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
    name = "basic-accumulator-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator4.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-mk4"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Normal.Tier4,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Normal.Tier4,
      output_flow_limit = Accumulators.Output.Normal.Tier4
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-4.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-charge-animation-4.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-discharge-animation-4.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
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
    name = "basic-accumulator-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator5.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-mk5"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Normal.Tier5,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Normal.Tier5,
      output_flow_limit = Accumulators.Output.Normal.Tier5
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-5.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-charge-animation-5.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-discharge-animation-5.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
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
    name = "basic-accumulator-mk6",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator6.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-mk6"},
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = Accumulators.Buffer.Normal.Tier6,
      usage_priority = "terciary",
      input_flow_limit = Accumulators.Input.Normal.Tier6,
      output_flow_limit = Accumulators.Output.Normal.Tier6
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-6.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-charge-animation-6.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator-discharge-animation-6.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
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