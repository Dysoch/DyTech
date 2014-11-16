data:extend(
{
  {
    type = "logistic-robot",
    name = "logistic-robot-1",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-robot-1.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable =
	{
		hardness = 0.1,
		mining_time = 0.1,
		result = "logistic-robot-1"
	},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    max_payload_size = 6,
    speed = 0.10,
    transfer_distance = 0.5,
	max_energy = "1200kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "0.8kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-1.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    idle_with_cargo =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-1.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    in_motion =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-1.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    in_motion_with_cargo =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-1.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-1",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-passive-provider-1.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-passive-provider-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "passive-provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-passive-provider-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-1",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-active-provider-1.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-active-provider-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "active-provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-active-provider-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-1",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-storage-1.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-storage-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "storage",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-storage-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-1",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-requester-1.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-requester-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "requester",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-requester-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-robot",
    name = "logistic-robot-2",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-robot-2.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable =
	{
		hardness = 0.1,
		mining_time = 0.1,
		result = "logistic-robot-2"
	},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    max_payload_size = 11,
    speed = 0.20,
    transfer_distance = 0.5,
	max_energy = "3000kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "0.6kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-2.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    idle_with_cargo =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-2.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    in_motion =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-2.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    in_motion_with_cargo =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-robot-2.png",
      priority = "high",
      width = 37,
      height = 34,
      frame_count = 1,
	  direction_count = 1
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_idle_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16,
      y = 23
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 59,
      height = 23,
      frame_count = 1,
      shift = {0.96875, 0.609375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
  },
  {
    type = "logistic-container",
    name = "logistic-chest-passive-provider-2",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-passive-provider-2.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-passive-provider-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "passive-provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-passive-provider-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-active-provider-2",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-active-provider-2.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-active-provider-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "active-provider",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-active-provider-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-2",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-storage-2.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-storage-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "storage",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-storage-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-2",
    icon = "__DyTech-Logistic__/graphics/icons/logistic-chest-requester-2.png",
    flags = {"placeable-player", "player-creation"},
    minable =
	{
		hardness = 0.2,
		mining_time = 0.5,
		result = "logistic-chest-requester-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "requester",
    picture =
    {
      filename = "__DyTech-Logistic__/graphics/entity/logistic/logistic-chest-requester-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "roboport",
    name = "roboport-1",
    icon = "__base__/graphics/icons/roboport.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-1"},
    max_health = 750,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "4MW",
      buffer_capacity = "96MJ"
    },
    recharge_minimum = "40MJ",
    energy_usage = "400kW",
    -- per one charge slot
    charging_energy = "400kW",
    logistics_radius = 50,
    construction_radius = 100,
    charge_approach_distance = 8,
    robot_slots_count = 12,
    material_slots_count = 12,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
    },
	base =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25}
    },
    base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125}
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375}
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625}
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375}
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "roboport",
    name = "roboport-2",
    icon = "__base__/graphics/icons/roboport.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "roboport-2"},
    max_health = 1000,
    corpse = "big-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "8MW",
      buffer_capacity = "192MJ"
    },
    recharge_minimum = "80MJ",
    energy_usage = "800kW",
    -- per one charge slot
    charging_energy = "800kW",
    logistics_radius = 100,
    construction_radius = 200,
    charge_approach_distance = 10,
    robot_slots_count = 17,
    material_slots_count = 17,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
    },
	base =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25}
    },
    base_patch =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-patch.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125}
    },
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375}
    },
    door_animation_up =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625}
    },
    door_animation_down =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375}
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
      width = 12,
      height = 12
    },
    construction_radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "construction-robot",
    name = "construction-robot-1",
    icon = "__base__/graphics/icons/construction-robot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-1"},
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    max_payload_size = 6,
    speed = 0.11,
    transfer_distance = 0.5,
    max_energy = "600kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
     idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16,
      y = 36
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    repair_pack = "repair-pack-2",
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  },
  {
    type = "construction-robot",
    name = "construction-robot-2",
    icon = "__base__/graphics/icons/construction-robot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "construction-robot-2"},
    max_health = 400,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    max_payload_size = 11,
    speed = 0.21,
    transfer_distance = 0.5,
    max_energy = "1200kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16
    },
    in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 32,
      height = 36,
      frame_count = 1,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16,
      y = 36
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 50,
      height = 24,
      frame_count = 1,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    working =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
      priority = "high",
      line_length = 2,
      width = 28,
      height = 36,
      frame_count = 2,
      shift = {0, -0.15625},
      axially_symmetrical = false,
      direction_count = 16,
      animation_speed = 0.3,
    },
    shadow_working =
    {
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
          width_in_frames = 16,
          height_in_frames = 1,
        }
      }),
      priority = "high",
      width = 50,
      height = 24,
      frame_count = 2,
      shift = {1.09375, 0.59375},
      axially_symmetrical = false,
      direction_count = 16
    },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    repair_pack = "repair-pack-3",
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  },
}
)
