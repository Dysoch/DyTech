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
      projectile_creation_distance = 1.39375,
      projectile_center = {0.0625, -0.0875},
      damage_modifier = 2,
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

function Laser_Turret_Base_Graphics(TINT)
return
	{
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
          priority = "high",
          width = 98,
          height = 82,
          axially_symmetrical = false,
          direction_count = 1,
          shift = { 0.109375, 0.03125 },
		  tint = TINT
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
          line_length = 1,
          width = 54,
          height = 46,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = true,
          direction_count = 1,
          shift = {0.046875, -0.109375},
        },
      }
    }
end

function Laser_Turret_Start_Graphics(inputs)
return
{
  filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-start.png",
  priority = "medium",
  width = 66,
  height = 67,
  frame_count = inputs.frame_count and inputs.frame_count or 15,
  line_length = inputs.line_length and inputs.line_length or 0,
  run_mode = inputs.run_mode and inputs.run_mode or "forward",
  axially_symmetrical = false,
  direction_count = 4,
  shift = {0.0625, -0.984375},
  tint = inputs.TINT
}
end

function Laser_Turret_Animation_Graphics(TINT)
return
	{
      layers =
      {
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
          line_length = 8,
          width = 68,
          height = 68,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {0.0625, -1}
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
          line_length = 8,
          width = 54,
          height = 44,
          frame_count = 1,
          axially_symmetrical = false,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {0.0625, -1.3125},
		  tint = TINT
        },
        {
          filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
          line_length = 8,
          width = 88,
          height = 52,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 64,
          draw_as_shadow = true,
          shift = {1.59375, 0}
        }
      }
    }
end