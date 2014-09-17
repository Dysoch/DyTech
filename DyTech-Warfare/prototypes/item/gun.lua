data:extend(
{
  {
    type = "gun",
    name = "sniper",
    icon = "__DyTech-Warfare__/graphics/icons/sniper.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "s",
    attack_parameters =
    {
      ammo_category = "sniper-ammo",
      cooldown = 2 * 60,
      movement_slow_down_factor = 0.6,
	  shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.6,
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/railgun.ogg",
          volume = 0.8
        }
      }
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "laser-gun",
    icon = "__DyTech-Warfare__/graphics/icons/sniper.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "laser",
    attack_parameters =
    {
      ammo_category = "battery",
      cooldown = 8,
      movement_slow_down_factor = 0.6,
	  shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.4,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.6,
      range = 25,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.8
        }
      }
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "laser-shotgun",
    icon = "__DyTech-Warfare__/graphics/icons/sniper.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "laser-shotgun",
    attack_parameters =
    {
      ammo_category = "battery-shotgun",
      cooldown = 8,
      movement_slow_down_factor = 0.6,
	  shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.4,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.6,
      range = 25,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.8
        }
      }
    },
    stack_size = 1
  },
}
)
