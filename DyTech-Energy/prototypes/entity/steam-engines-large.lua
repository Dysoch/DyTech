data:extend(
{
  {
    type = "generator",
    name = "steam-engine-primary-large",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-large"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 3.5,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-secondary-large",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-large"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 3.5,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
  },ce_to_sound_speedup = 0.5
  },
  {
    type = "generator",
    name = "steam-engine-tertiary-large",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-tertiary-large"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 3.5,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-primary-large-mk2",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-large-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 6,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-secondary-large-mk2",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-large-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 6,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-tertiary-large-mk2",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-tertiary-large-mk2"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 6,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 4,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-primary-large-mk3",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-large-mk3"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 9,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-secondary-large-mk3",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-large-mk3"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 9,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-tertiary-large-mk3",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-tertiary-large-mk3"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 9,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-primary-large-mk4",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-large-mk4"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 13.5,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-secondary-large-mk4",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-large-mk4"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 13.5,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-tertiary-large-mk4",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-tertiary-large-mk4"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 13.5,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 16,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-primary-large-mk5",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-primary-large-mk5"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 20,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 32,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-secondary-large-mk5",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-large-mk5"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 20,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 32,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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
    name = "steam-engine-tertiary-large-mk5",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-tertiary-large-mk5"},
    max_health = 300,
    corpse = "big-remnants",
    effectivity = 20,
    fluid_usage_per_tick = 0.35,
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
	fast_replaceable_group =  "steam-engine-large",
    collision_box = {{-2.9, -4.9}, {2.9, 4.9}},
    selection_box = {{-3.0, -5.0}, {3.0, 5.0}},
    fluid_box =
    {
      base_area = 32,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {2, 6} },
        { position = {2, -6} },
        { position = {-2, 6} },
        { position = {-2, -6} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    horizontal_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
	  scale = 2,
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
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