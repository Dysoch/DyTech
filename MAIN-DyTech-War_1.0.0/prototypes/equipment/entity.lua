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
      ammo_category = "electric",
      cooldown = 20,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 20,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "200J",
        projectile = "laser-sapphire-2",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-sapphire-2",
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
      ammo_category = "electric",
      cooldown = 20,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 20,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "300J",
        projectile = "laser-emerald-2",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-emerald-2",
                starting_speed = 0.28
              }
            }
          }
        }
      }
    },
    automatic = true
  },
}
)
