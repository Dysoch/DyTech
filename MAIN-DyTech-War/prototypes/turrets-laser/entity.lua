require "util"
--[[BASE EDIT]]--
laser_turret_extension =
{
		filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-extension-ruby.png",
		priority = "medium",
		width = 131,
		height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

laser_turret_extension_sapphire =
{
		filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-extension-sapphire.png",
		priority = "medium",
		width = 131,
		height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

laser_turret_extension_emerald =
{
		filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-extension-emerald.png",
		priority = "medium",
		width = 131,
		height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

laser_turret_extension_topaz =
{
		filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-extension-topaz.png",
		priority = "medium",
		width = 131,
		height = 74,
		direction_count = 4,
		frame_count = 5,
		axially_symmetrical = false,
		shift = {1.171875, -0.34375}
}

data.raw["electric-turret"]["laser-turret"].icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-ruby-1.png"
data.raw["electric-turret"]["laser-turret"].max_health = 150
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "laser-turret"
data.raw["electric-turret"]["laser-turret"].energy_consumption = "30kJ"
data.raw["electric-turret"]["laser-turret"].buffer_capacity = "500kJ"
data.raw["electric-turret"]["laser-turret"].input_flow_limit = "25000kW"
data.raw["electric-turret"]["laser-turret"].drain = "25kW"
data.raw["electric-turret"]["laser-turret"].prepared_animation.filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-ruby.png"
data.raw["electric-turret"]["laser-turret"].base_picture.filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-1.png"
data.raw["electric-turret"]["laser-turret"].attack_parameters.cooldown = 40
data.raw["electric-turret"]["laser-turret"].attack_parameters.damage = 8
data.raw["electric-turret"]["laser-turret"].attack_parameters.range = 17

data:extend(
{
  --[[RUBY TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-2",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-ruby-2.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-ruby.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 30,
      damage = 6,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 18,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-ruby-3.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-ruby.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 20,
      damage = 5,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 21,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-sapphire-1.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-sapphire.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-1.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 35,
      damage = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 22,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-sapphire-2.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-sapphire.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 27.5,
      damage = 12,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 24,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-sapphire-3.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-sapphire.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 15,
      damage = 8,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 26,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-emerald-1.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-emerald.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-1.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 30,
      damage = 25,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 28,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-emerald-2.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-emerald.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-2.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 20,
      damage = 18,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 30,
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-emerald-3.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-emerald.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-3.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0.109375, 0.03125 }
    },
    attack_parameters =
    {
      ammo_category = "electric",
      cooldown = 10,
      damage = 13,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 32,
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
              starting_speed = 0.30
            }
          }
        }
      }
    },
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-topaz-1.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-topaz.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-1.png",
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-topaz-2.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-topaz.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-2.png",
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
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-topaz-3.png",
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-topaz.png",
      priority = "medium",
      width = 131,
      height = 72,
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
      filename = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-turret-base-3.png",
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