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
      buffer_capacity = "202J"
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
        energy_consumption = "200J",
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
      buffer_capacity = "404J"
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
        energy_consumption = "300J",
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
      buffer_capacity = "240J",
      input_flow_limit = "480W",
      usage_priority = "primary-input"
    },
    energy_per_shield = "40J"
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
      buffer_capacity = "300J",
      input_flow_limit = "600W",
      usage_priority = "primary-input"
    },
    energy_per_shield = "50J"
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
      buffer_capacity = "360J",
      input_flow_limit = "720W",
      usage_priority = "primary-input"
    },
    energy_per_shield = "60J"
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
      buffer_capacity = "25KJ",
      input_flow_limit = "250KW",
      output_flow_limit = "250KW",
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
      buffer_capacity = "125KJ",
      input_flow_limit = "1250KW",
      output_flow_limit = "1250KW",
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
      buffer_capacity = "600KJ",
      input_flow_limit = "6000KW",
      output_flow_limit = "6000KW",
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
    power = "90W"
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
    power = "270W"
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
    power = "810W"
  },
}
)
