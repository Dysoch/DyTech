data.raw["active-defense-equipment"]["basic-laser-defense-equipment"].sprite.filename = "__MAIN-DyTech-War__/graphics/equipment/basic-laser-defense-equipment-1.png"
data.raw["active-defense-equipment"]["basic-laser-defense-equipment"].attack_parameters.ammo_type.action[1].action_delivery[1].projectile = "laser-ruby-1"

data:extend(
{
  {
    type = "active-defense-equipment",
    name = "basic-laser-defense-equipment-2",
    sprite = 
    {
      filename = "__MAIN-DyTech-War__/graphics/equipment/basic-laser-defense-equipment-2.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "20kJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 15,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 22.5,
      sound = make_laser_sounds(0.5),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "20kJ",
        projectile = "laser-sapphire-1",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-sapphire-1",
                starting_speed = 0.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  {
    type = "active-defense-equipment",
    name = "basic-laser-defense-equipment-3",
    sprite = 
    {
      filename = "__MAIN-DyTech-War__/graphics/equipment/basic-laser-defense-equipment-3.png",
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "40kJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 10,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 30,
      sound = make_laser_sounds(0.5),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "30kJ",
        projectile = "laser-emerald-3",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-emerald-3",
                starting_speed = 0.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk3-equipment",
    sprite = 
    {
      filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 300,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "24kJ",
      input_flow_limit = "48kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "4kJ"
  },
  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk4-equipment",
    sprite = 
    {
      filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 500,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "30kJ",
      input_flow_limit = "60kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "5kJ"
  },
  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk5-equipment",
    sprite = 
    {
      filename = "__base__/graphics/equipment/energy-shield-mk2-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 750,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "36kJ",
      input_flow_limit = "72kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "6kJ"
  },
  {
    type = "battery-equipment",
    name = "battery-mk3-equipment",
    sprite = 
    {
      filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "2500kJ",
      input_flow_limit = "25MW",
      output_flow_limit = "25MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "battery-equipment",
    name = "battery-mk4-equipment",
    sprite = 
    {
      filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "12500KJ",
      input_flow_limit = "125MW",
      output_flow_limit = "125MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "battery-equipment",
    name = "battery-mk5-equipment",
    sprite = 
    {
      filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "60000KJ",
      input_flow_limit = "600MW",
      output_flow_limit = "600MW",
      usage_priority = "terciary"
    }
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-2",
    sprite = 
    {
      filename = "__base__/graphics/equipment/solar-panel-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "30W"
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-3",
    sprite = 
    {
      filename = "__base__/graphics/equipment/solar-panel-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "9kW"
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-4",
    sprite = 
    {
      filename = "__base__/graphics/equipment/solar-panel-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "27kW"
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-5",
    sprite = 
    {
      filename = "__base__/graphics/equipment/solar-panel-equipment.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "81kW"
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-equipment-1",
    take_result = "personal-roboport-equipment-1",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-roboport-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "7MJ",
      input_flow_limit = "7000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "400kW",
    energy_consumption = "8kW",

    robot_limit = 25,
    construction_radius = 30,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

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
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5
  },
  {
    type = "roboport-equipment",
    name = "personal-roboport-equipment-2",
    take_result = "personal-roboport-equipment-2",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-roboport-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "7MJ",
      input_flow_limit = "7000KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "800kW",
    energy_consumption = "16kW",

    robot_limit = 60,
    construction_radius = 60,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

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
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5
  },
}
)
