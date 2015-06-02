data:extend(
{
  {
    type = "roboport",
    name = "roboport-1",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-1.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 1.5, mining_time = 0.5, result = "roboport-1"},
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
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-base-1.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25},
    },
    base_patch =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-base-patch-1.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
    },
    base_animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-base-animation-1.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
    },
    door_animation_up =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-door-up-1.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
    },
    door_animation_down =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-door-down-1.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
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
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
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
    },
    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
      },
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      },
    },
  },
  {
    type = "roboport",
    name = "roboport-2",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 2.5, mining_time = 0.5, result = "roboport-2"},
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
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-base-2.png",
      width = 143,
      height = 135,
      shift = {0.5, 0.25},
    },
    base_patch =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-base-patch-2.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125, 0.203125},
    },
    base_animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-base-animation-2.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315, -1.9375},
    },
    door_animation_up =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-door-up-2.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625, -0.890625},
    },
    door_animation_down =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/roboport-door-down-2.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625, -0.234375},
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
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3
    },
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
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
    },
    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
      },
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      },
    },
  },
  {
    type = "roboport",
    name = "robot-charger-1",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/robot-charger.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "robot-charger-1"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "2MW",
      buffer_capacity = "48MJ"
    },
    recharge_minimum = "20MJ",
    energy_usage = "500kW",
    -- per one charge slot
    charging_energy = "500kW",
    logistics_radius = 10,
    construction_radius = 15,
    charge_approach_distance = 3,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-0.5, -2}, {0.5, -2}, {0.5, -1}, {-0.5, -1},
    },
    base =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/robot-charger.png",
      width = 142,
      height = 128,
      shift = {1.4, -1.0}
    },
    base_patch =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
    },
    base_animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
    },
    door_animation_up =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
    },
    door_animation_down =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
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
    name = "robot-charger-2",
    icon = "__MAIN-DyTech-Machine__/graphics/logistic-network/icon/robot-charger.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "robot-charger-2"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "4MW",
      buffer_capacity = "96MJ"
    },
    recharge_minimum = "20MJ",
    energy_usage = "1000kW",
    -- per one charge slot
    charging_energy = "1000kW",
    logistics_radius = 20,
    construction_radius = 30,
    charge_approach_distance = 3,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets =
    {
      {-0.5, -2}, {0.5, -2}, {0.5, -1}, {-0.5, -1},
    },
    base =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/robot-charger.png",
      width = 142,
      height = 128,
      shift = {1.4, -1.0}
    },
    base_patch =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
    },
    base_animation =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
    },
    door_animation_up =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
    },
    door_animation_down =
    {
      filename = "__MAIN-DyTech-Machine__/graphics/logistic-network/1x1.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      animation_speed = 0,
      shift = {-0.5315, -1.9375}
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
}
)
