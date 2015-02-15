data.raw["accumulator"]["basic-accumulator"].fast_replaceable_group = "accumulator"

data:extend(
{
  {
    type = "accumulator",
    name = "basic-accumulator-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator2.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-mk2"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10MJ",
      usage_priority = "terciary",
      input_flow_limit = "350kW",
      output_flow_limit = "1000kW"
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
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10MJ",
      usage_priority = "terciary",
      input_flow_limit = "1000kW",
      output_flow_limit = "350kW"
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
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "20MJ",
      usage_priority = "terciary",
      input_flow_limit = "750kW",
      output_flow_limit = "2000kW"
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
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "20MJ",
      usage_priority = "terciary",
      input_flow_limit = "2000kW",
      output_flow_limit = "750kW"
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
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "150MJ",
      usage_priority = "terciary",
      input_flow_limit = "750kW",
      output_flow_limit = "750kW"
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