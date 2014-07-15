data:extend(
{
  {
    type = "generator",
    name = "steam-engine-primary",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 0.1,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-terciary",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-terciary"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 1,
    fluid_usage_per_tick = 0.1,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-primary-mk2",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 2,
    fluid_usage_per_tick = 0.11,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-secondary-mk2",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 2,
    fluid_usage_per_tick = 0.11,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-terciary-mk2",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-terciary-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 2,
    fluid_usage_per_tick = 0.11,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-primary-mk3",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine3.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-mk3"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 3,
    fluid_usage_per_tick = 0.12,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-secondary-mk3",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine3.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk3"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 3,
    fluid_usage_per_tick = 0.12,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-terciary-mk3",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine3.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-terciary-mk3"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 3,
    fluid_usage_per_tick = 0.12,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-primary-mk4",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine4.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-mk4"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 5,
    fluid_usage_per_tick = 0.13,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-secondary-mk4",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine4.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk4"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 5,
    fluid_usage_per_tick = 0.13,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-terciary-mk4",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine4.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-terciary-mk4"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 5,
    fluid_usage_per_tick = 0.13,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-primary-mk5",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine5.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-mk5"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 8,
    fluid_usage_per_tick = 0.14,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-secondary-mk5",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine5.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk5"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 8,
    fluid_usage_per_tick = 0.14,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-terciary-mk5",
    icon = "__DyTech-Energy__/graphics/icons/steam-engine5.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-terciary-mk5"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 8,
    fluid_usage_per_tick = 0.14,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      frame_width = 246,
      frame_height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 155,
      frame_height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },
}
)