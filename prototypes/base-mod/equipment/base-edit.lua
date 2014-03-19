data:extend(
{
  {
    type = "active-defense-equipment",
    name = "basic-laser-defense-equipment",
    sprite = 
    {
      filename = "__DyTech-Graphics__/graphics/equipment/basic-laser-defense-equipment-1.png",
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
      buffer_capacity = "101J"
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 20,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 15,
      sound =
      {
        {
          filename = "__base__/sound/laser.wav",
          volume = 0.4
        }
      },
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "100J",
        projectile = "laser-ruby-1",
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = "laser-ruby-1",
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