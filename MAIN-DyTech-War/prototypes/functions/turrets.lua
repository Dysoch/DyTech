--require "prototypes.functions.turrets"

function Gun_Turret_Base(Tint)
return
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0, -0.125 + 0.6 },
	  tint = Tint
    }
end

function Gun_Turret_Prepared_Animation(Tint)
return
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
      priority = "medium",
      width = 178,
      height = 107,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.34375, -0.46875 + 0.6},
	  tint = Tint
    }
end

function Gun_Turret_Attack(Ammo, Cooldown, Range)
return
    {
      type = "projectile",
      ammo_category = Ammo,
      cooldown = Cooldown,
      projectile_center = {0, 0.6},
      projectile_creation_distance = 1.2,
      shell_particle = 
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = Range,
      sound = make_heavy_gunshot_sounds(),
    }
end

function gun_turret_extension_DyTech(Tint)
return
	{
	  filename = "__base__/graphics/entity/gun-turret/gun-turret-extension.png",
	  priority = "medium",
	  width = 171,
	  height = 102,
	  direction_count = 4,
	  frame_count = 5,
	  axially_symmetrical = false,
	  shift = {1.34375, -0.5 + 0.6}
	}
end

function Laser_Turret_Attack(COOLDOWN, RANGE, CONSUMPTION, PROJECTILE)
return
	{
      type = "projectile",
      ammo_category = "electric",
      cooldown = COOLDOWN,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = RANGE,
      damage_modifier = 4,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = CONSUMPTION,
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = PROJECTILE,
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound = make_laser_sounds()
    }
end