require "prototypes.internal-config"

data.raw["generator"]["steam-engine"].fast_replaceable_group = "steam-engine"
data.raw["generator"]["steam-engine"].fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick1
data.raw["generator"]["steam-engine"].effectivity = SteamEngines.Normal.effectivity1
data.raw["generator"]["steam-engine"].max_health = Health.Tier1
data.raw["generator"]["steam-engine"].resistances = Resistances.Tier1

data:extend(
{
  {
    type = "generator",
    name = "steam-engine-primary",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine"},
    max_health = Health.Tier1,
	resistances = Resistances.Tier1,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-primary",
    order = "[mk1]",
    effectivity = SteamEngines.Normal.effectivity1,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick1,
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
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
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
    name = "steam-engine-terciary",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine"},
    max_health = Health.Tier1,
	resistances = Resistances.Tier1,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-primary",
    order = "[mk1]",
    effectivity = SteamEngines.Normal.effectivity1,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick1,
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
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
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
    name = "steam-engine-primary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-primary",
    order = "[mk2]",
    effectivity = SteamEngines.Normal.effectivity2,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick2,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 2.5,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-2.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-2.png",
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
    name = "steam-engine-secondary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-secondary",
    order = "[mk2]",
    effectivity = SteamEngines.Normal.effectivity2,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick2,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 2.5,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-2.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-2.png",
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
    name = "steam-engine-terciary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-tertiary",
    order = "[mk2]",
    effectivity = SteamEngines.Normal.effectivity2,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick2,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 2.5,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-2.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-2.png",
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
    name = "steam-engine-primary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine3.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-primary",
    order = "[mk3]",
    effectivity = SteamEngines.Normal.effectivity3,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick3,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 5,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-3.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-3.png",
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
    name = "steam-engine-secondary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine3.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-secondary",
    order = "[mk3]",
    effectivity = SteamEngines.Normal.effectivity3,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick3,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 5,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-3.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-3.png",
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
    name = "steam-engine-terciary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine3.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk3"},
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-tertiary",
    order = "[mk3]",
    effectivity = SteamEngines.Normal.effectivity3,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick3,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 5,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-3.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-3.png",
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
    name = "steam-engine-primary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine4.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk4"},
    max_health = Health.Tier8,
	resistances = Resistances.Tier8,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-primary",
    order = "[mk4]",
    effectivity = SteamEngines.Normal.effectivity4,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick4,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 10,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-4.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-4.png",
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
    name = "steam-engine-secondary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine4.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk4"},
    max_health = Health.Tier8,
	resistances = Resistances.Tier8,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-secondary",
    order = "[mk4]",
    effectivity = SteamEngines.Normal.effectivity4,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick4,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 10,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-4.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-4.png",
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
    name = "steam-engine-terciary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine4.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk4"},
    max_health = Health.Tier8,
	resistances = Resistances.Tier8,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-tertiary",
    order = "[mk4]",
    effectivity = SteamEngines.Normal.effectivity4,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick4,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 10,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-4.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-4.png",
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
    name = "steam-engine-primary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine5.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk5"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-primary",
    order = "[mk5]",
    effectivity = SteamEngines.Normal.effectivity5,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick5,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 20,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-5.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-5.png",
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
    name = "steam-engine-secondary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine5.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk5"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-secondary",
    order = "[mk5]",
    effectivity = SteamEngines.Normal.effectivity5,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick5,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 20,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-5.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-5.png",
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
    name = "steam-engine-terciary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine5.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-secondary-mk5"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "big-remnants",
    subgroup = "dytech-energy-steam-tertiary",
    order = "[mk5]",
    effectivity = SteamEngines.Normal.effectivity5,
    fluid_usage_per_tick = SteamEngines.Normal.fluid_usage_per_tick5,
	fast_replaceable_group =  "steam-engine",
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 20,
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
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-horizontal-5.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__MAIN-DyTech-Power__/graphics/steam-engines-normal/steam-engine-vertical-5.png",
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