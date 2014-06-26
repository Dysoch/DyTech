require "util"
--[[BASE EDIT]]--
laser_turret_extension =
{
		filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-extension-ruby.png",
		priority = "medium",
		frame_width = 131,
		frame_height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

laser_turret_extension_sapphire =
{
		filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-extension-sapphire.png",
		priority = "medium",
		frame_width = 131,
		frame_height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

laser_turret_extension_emerald =
{
		filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-extension-emerald.png",
		priority = "medium",
		frame_width = 131,
		frame_height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

laser_turret_extension_topaz =
{
		filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-extension-topaz.png",
		priority = "medium",
		frame_width = 131,
		frame_height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

data:extend(
{
  {
    type = "ammo-turret",
    name = "sniper-turret",
    icon = "__DyTech-Warfare__/graphics/icons/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "sniper-turret"},
    max_health = 750,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9 }, {0.4, 0.9}},
    selection_box = {{-0.5, -1 }, {0.5, 1}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "huge-explosion",
    inventory_size = 2,
	automated_ammo_count = 20,
    folded_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/gun-turret/gun-turret.png",
      priority = "medium",
      frame_width = 178,
      frame_height = 107,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.34375, -0.46875 + 0.6}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0, -0.125 + 0.6 }
    },
    attack_parameters =
    {
      ammo_category = "sniper-ammo",
      cooldown = 2 * 60,
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
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/railgun.ogg",
          volume = 0.3
        }
      }
    }
  },
  --[[RUBY TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-2",
    icon = "__DyTech-Warfare__/graphics/icons/laser-ruby-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-2" },
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group = "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "58kJ",
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
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "580kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-ruby.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 27,
      damage = 4,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 18,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-3",
    icon = "__DyTech-Warfare__/graphics/icons/laser-ruby-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-3" },
    max_health = 250,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "66kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-ruby-2",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "660kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-ruby.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 24,
      damage = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 21,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  --[[SAPPHIRE TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-4",
    icon = "__DyTech-Warfare__/graphics/icons/laser-sapphire-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-4" },
    max_health = 300,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "58kJ",
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
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "580kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_sapphire)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_sapphire,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-sapphire.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_sapphire)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-1.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 21,
      damage = 8,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 22,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-5",
    icon = "__DyTech-Warfare__/graphics/icons/laser-sapphire-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-5" },
    max_health = 350,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "75kJ",
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
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "750kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_sapphire)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_sapphire,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-sapphire.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_sapphire)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 19,
      damage = 10,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 24,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-6",
    icon = "__DyTech-Warfare__/graphics/icons/laser-sapphire-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-6" },
    max_health = 400,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "91kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-sapphire-3",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "910kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_sapphire)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_sapphire,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-sapphire.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_sapphire)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 17,
      damage = 12,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 26,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  --[[EMERALD TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-7",
    icon = "__DyTech-Warfare__/graphics/icons/laser-emerald-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-7" },
    max_health = 500,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "66kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-emerald-1",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "660kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_emerald)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_emerald,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-emerald.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_emerald)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-1.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 15,
      damage = 14,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 28,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-8",
    icon = "__DyTech-Warfare__/graphics/icons/laser-emerald-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-8" },
    max_health = 750,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "91kJ",
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
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "910kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_emerald)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_emerald,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-emerald.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_emerald)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 13,
      damage = 16,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 30,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-9",
    icon = "__DyTech-Warfare__/graphics/icons/laser-emerald-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-9" },
    max_health = 1000,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "133kJ",
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
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1330kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_emerald)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_emerald,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-emerald.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_emerald)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 10,
      damage = 20,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 32,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  --[[TOPAZ TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-sniper-1",
    icon = "__DyTech-Warfare__/graphics/icons/laser-topaz-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-sniper-1" },
    max_health = 1000,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "600kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-topaz-1",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "6000kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_topaz)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_topaz,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-topaz.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_topaz)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-1.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 75,
      damage = 25,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-sniper-2",
    icon = "__DyTech-Warfare__/graphics/icons/laser-topaz-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-sniper-2" },
    max_health = 1000,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "450kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-topaz-2",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "4500kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_topaz)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_topaz,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-topaz.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_topaz)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 90,
      damage = 50,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 65,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
  {
    type = "electric-turret",
    name = "laser-turret-sniper-3",
    icon = "__DyTech-Warfare__/graphics/icons/laser-topaz-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-sniper-3" },
    max_health = 4000,
    corpse = "small-remnants",
    collision_box = {{ -0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{ -0.4, -0.4}, {0.4, 0.4}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "huge-explosion",
    folding_speed = 0.05,
    ammo_type =
    {
      type = "projectile",
      category = "laser-turret",
      energy_consumption = "300kJ",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser-topaz-3",
              starting_speed = 0.28
            }
          }
        }
      }
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "3000kJ",
      input_flow_limit = "25000kW",
      drain = "25kW",
      usage_priority = "primary-input",
    },
    folded_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_topaz)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = laser_turret_extension_topaz,
    prepared_animation =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-topaz.png",
      priority = "medium",
      frame_width = 131,
      frame_height = 72,
      direction_count = 64,
      frame_count = 1,
      line_length = 8,
      axially_symmetrical = false,
      shift = {1.328125, -0.375}
    },
    folding_animation = (function()
                          local res = util.table.deepcopy(laser_turret_extension_topaz)
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture =
    {
      filename = "__DyTech-Warfare__/graphics/entity/laser-turrets/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 105,
      damage = 75,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 80,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      }
    }
  },
}
)