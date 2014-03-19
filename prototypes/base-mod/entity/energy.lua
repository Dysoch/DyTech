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
	fast_replaceable_group = "steam-engine",
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
      frame_width = 219,
      frame_height = 150,
      frame_count = 32,
      line_length = 8,
      shift = {1.1, -0.3}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 180,
      frame_height = 222,
      frame_count = 32,
      line_length = 8,
      shift = {1.2, 1}
    },
    pipes_horizontal =
    {
      filename = "__base__/graphics/entity/steam-engine/pipes-horizontal.png",
      priority = "high",
      width = 160,
      height = 42,
      shift = {0, 0}
    },
    pipes_vertical =
    {
      filename = "__base__/graphics/entity/steam-engine/pipes-vertical.png",
      priority = "high",
      width = 44,
      height = 160
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.1, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.33
      },
      {
        name = "smoke",
        north_position = {0, -1.1},
        east_position = {0, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.66
      },
      {
        name = "smoke",
        north_position = {0, 0},
        east_position = {1.1, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.99
      }
    }
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
	fast_replaceable_group = "steam-engine",
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
      frame_width = 219,
      frame_height = 150,
      frame_count = 32,
      line_length = 8,
      shift = {1.1, -0.3}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      frame_width = 180,
      frame_height = 222,
      frame_count = 32,
      line_length = 8,
      shift = {1.2, 1}
    },
    pipes_horizontal =
    {
      filename = "__base__/graphics/entity/steam-engine/pipes-horizontal.png",
      priority = "high",
      width = 160,
      height = 42,
      shift = {0, 0}
    },
    pipes_vertical =
    {
      filename = "__base__/graphics/entity/steam-engine/pipes-vertical.png",
      priority = "high",
      width = 44,
      height = 160
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.1, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.33
      },
      {
        name = "smoke",
        north_position = {0, -1.1},
        east_position = {0, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.66
      },
      {
        name = "smoke",
        north_position = {0, 0},
        east_position = {1.1, -2.6},
        deviation = {0.2, 0.2},
        frequency = 1,
        offset = 0.99
      }
    }
  },
  {
    type = "solar-panel",
    name = "solar-panel-secondary",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-secondary"},
    max_health = 100,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "60kW"
  },
  {
    type = "solar-panel",
    name = "solar-panel-terciary",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-terciary"},
    max_health = 100,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
	fast_replaceable_group = "solar-panel",
    energy_source =
    {
      type = "electric",
      usage_priority = "terciary"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "60kW"
  },
  {
    type = "accumulator",
    name = "basic-accumulator-primary",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-primary"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "primary-output",
      input_flow_limit = "300kW",
      output_flow_limit = "300kW"
    },
    picture =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
      frame_width = 138,
      frame_height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      frame_width = 147,
      frame_height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7}
  },
  {
    type = "accumulator",
    name = "basic-accumulator-secondary",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "basic-accumulator-secondary"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "accumulator",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "secondary-output",
      input_flow_limit = "300kW",
      output_flow_limit = "300kW"
    },
    picture =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
      frame_width = 138,
      frame_height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      frame_width = 147,
      frame_height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7}
  },
}
)