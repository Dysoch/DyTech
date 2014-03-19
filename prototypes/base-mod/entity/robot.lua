data:extend(
{
  {
    type = "logistic-robot",
    name = "logistic-robot-1",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-robot-2.png",
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
    max_payload_size = 2,
    speed = 0.10,
    transfer_distance = 0.5,
	max_energy = "1200kJ",
    energy_per_tick = "0.01kJ",
    energy_per_move = "0.8kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-robot-1.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-provider-1",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-provider-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-provider-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "provider",
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-chest-provider-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-1",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-storage-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-storage-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "storage",
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-chest-storage-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-1",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-requester-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-requester-1"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 72,
    logistic_mode = "requester",
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-chest-requester-1.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-robot",
    name = "logistic-robot-2",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-robot-3.png",
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
    max_payload_size = 4,
    speed = 0.20,
    transfer_distance = 0.5,
	max_energy = "3000J",
    energy_per_tick = "0.01J",
    energy_per_move = "0.6J",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-robot-2.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-provider-2",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-provider-3.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-provider-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "provider",
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-chest-provider-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-storage-2",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-storage-3.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-storage-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "storage",
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-chest-storage-2.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    }
  },
  {
    type = "logistic-container",
    name = "logistic-chest-requester-2",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-requester-3.png",
    flags = {"placeable-player", "player-creation"},
    minable = 
	{
		hardness = 0.2, 
		mining_time = 0.5, 
		result = "logistic-chest-requester-2"
	},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 96,
    logistic_mode = "requester",
    picture =
    {
      filename = "__DyTech-Graphics__/graphics/entity/logistic/logistic-chest-requester-2.png",
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
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport.png",
      priority = "medium",
      frame_width = 143,
      frame_height = 151,
      frame_count = 8,
      shift = {0.5, 0},
      animation_speed = 0.5
    },
    door_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door.png",
      priority = "medium",
      frame_width = 52,
      frame_height = 39,
      frame_count = 16,
      shift = {0, -0.6}
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      frame_width = 37,
      frame_height = 35,
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
    base_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport.png",
      priority = "medium",
      frame_width = 143,
      frame_height = 151,
      frame_count = 8,
      shift = {0.5, 0},
      animation_speed = 0.5
    },
    door_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-door.png",
      priority = "medium",
      frame_width = 52,
      frame_height = 39,
      frame_count = 16,
      shift = {0, -0.6}
    },
    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      frame_width = 37,
      frame_height = 35,
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
    max_payload_size = 2,
    speed = 0.11,
    transfer_distance = 0.5,
    max_energy = "600kJ",
    energy_per_tick = "0.01kJ",
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    },
    repair_pack = "repair-pack"
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
    max_payload_size = 4,
    speed = 0.21,
    transfer_distance = 0.5,
    max_energy = "1200kJ",
    energy_per_tick = "0.01kJ",
    energy_per_move = "1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    picture =
    {
      filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    },
    repair_pack = "repair-pack-2"
  },
}
)