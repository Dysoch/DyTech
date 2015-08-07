require "prototypes.internal-config"
require "prototypes.functions.turrets"
require "util"

BRONZE_BASE = {r=0.722, g=0.525, b=0.043, a=0.95}
SILVER_BASE = {r=0.753, g=0.753, b=0.753, a=0.95}
GOLD_BASE = {r=1, g=0.843, b=0, a=0.95}
RUBY = {r=0.698, g=0.133, b=0.133, a=0.95}
SAPPHIRE = {r=0.255, g=0.412, b=0.882, a=0.95}
EMERALD = {r=0.196, g=0.804, b=0.196, a=0.95}
TOPAZ = {r=0.855, g=0.647, b=0.125, a=0.95}
DIAMOND = {r=0.941, g=0.973, b=1, a=0.95}

data.raw["electric-turret"]["laser-turret"].icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-ruby-1.png"
data.raw["electric-turret"]["laser-turret"].max_health = Health.Tier2
data.raw["electric-turret"]["laser-turret"].resistances = Resistances.Tier2
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "laser-turret"
data.raw["electric-turret"]["laser-turret"].base_picture = Laser_Turret_Base_Graphics(BRONZE_BASE)
data.raw["electric-turret"]["laser-turret"].prepared_animation = Laser_Turret_Animation_Graphics(RUBY)
data.raw["electric-turret"]["laser-turret"].folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=RUBY},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    }
data.raw["electric-turret"]["laser-turret"].preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=RUBY},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    }
data.raw["electric-turret"]["laser-turret"].folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=RUBY},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    }
data.raw["electric-turret"]["laser-turret"].energy_source =
    {
      type = "electric",
      buffer_capacity = "150.75kJ",
      input_flow_limit = "25000kW",
      drain = "4.5kW",
      usage_priority = "primary-input",
    }
data.raw["electric-turret"]["laser-turret"].attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 20,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = 25,
      damage_modifier = 4,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = "150kJ",
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
      sound = make_laser_sounds()
    }

data:extend(
{
  --[[RUBY TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-2",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-ruby-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-2" },
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group = "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "201kJ",
      input_flow_limit = "25000kW",
      drain = "6kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=RUBY},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=RUBY},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(RUBY),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=RUBY},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(SILVER_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(20, 25, "200kJ", "laser-ruby-2")
  },
  {
    type = "electric-turret",
    name = "laser-turret-3",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-ruby-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-3" },
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "251.25kJ",
      input_flow_limit = "25000kW",
      drain = "7.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=RUBY},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=RUBY},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(RUBY),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=RUBY},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(GOLD_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(20, 25, "250kJ", "laser-ruby-3")
  },
  --[[SAPPHIRE TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-4",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-sapphire-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-4" },
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "301.5kJ",
      input_flow_limit = "25000kW",
      drain = "9kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=SAPPHIRE},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=SAPPHIRE},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(SAPPHIRE),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=SAPPHIRE},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(BRONZE_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(18, 27.5, "300kJ", "laser-sapphire-1")
  },
  {
    type = "electric-turret",
    name = "laser-turret-5",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-sapphire-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-5" },
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "351.75kJ",
      input_flow_limit = "25000kW",
      drain = "10.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=SAPPHIRE},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=SAPPHIRE},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(SAPPHIRE),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=SAPPHIRE},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(SILVER_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(16, 30, "350kJ", "laser-sapphire-2")
  },
  {
    type = "electric-turret",
    name = "laser-turret-6",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-sapphire-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-6" },
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "402kJ",
      input_flow_limit = "25000kW",
      drain = "12kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=SAPPHIRE},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=SAPPHIRE},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(SAPPHIRE),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=SAPPHIRE},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(GOLD_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(14, 32.5, "400kJ", "laser-sapphire-3")
  },
  --[[EMERALD TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-7",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-emerald-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-7" },
    max_health = Health.Tier8,
	resistances = Resistances.Tier8,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "160.8kJ",
      input_flow_limit = "25000kW",
      drain = "4.8kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=EMERALD},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=EMERALD},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(EMERALD),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=EMERALD},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(BRONZE_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(20, 37.5, "160kJ", "laser-emerald-1")
  },
  {
    type = "electric-turret",
    name = "laser-turret-8",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-emerald-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-8" },
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "140.7kJ",
      input_flow_limit = "25000kW",
      drain = "4.2kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=EMERALD},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=EMERALD},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(EMERALD),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=EMERALD},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(SILVER_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(15, 40.5, "140kJ", "laser-emerald-2")
  },
  {
    type = "electric-turret",
    name = "laser-turret-9",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-emerald-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-9" },
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "120.6kJ",
      input_flow_limit = "25000kW",
      drain = "3.6kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=EMERALD},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=EMERALD},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(EMERALD),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=EMERALD},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(GOLD_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(10, 43.75, "120kJ", "laser-emerald-3")
  },
  --[[TOPAZ TURRETS]]--
  {
    type = "electric-turret",
    name = "laser-turret-sniper-1",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-topaz-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-sniper-1" },
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "351.75kJ",
      input_flow_limit = "25000kW",
      drain = "10.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=TOPAZ},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=TOPAZ},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(TOPAZ),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=TOPAZ},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(BRONZE_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(30, 62.5, "350kJ", "laser-topaz-1")
  },
  {
    type = "electric-turret",
    name = "laser-turret-sniper-2",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-topaz-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-sniper-2" },
    max_health = Health.Tier7,
	resistances = Resistances.Tier7,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "402kJ",
      input_flow_limit = "25000kW",
      drain = "12kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=TOPAZ},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=TOPAZ},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(TOPAZ),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=TOPAZ},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(SILVER_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(15, 75, "400kJ", "laser-topaz-2")
  },
  {
    type = "electric-turret",
    name = "laser-turret-sniper-3",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-topaz-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-sniper-3" },
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "452.25kJ",
      input_flow_limit = "25000kW",
      drain = "13.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=TOPAZ},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=TOPAZ},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(TOPAZ),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=TOPAZ},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(GOLD_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(7.5, 87.5, "450kJ", "laser-topaz-3")
  },
  --[[Diamond Turrets]]--
  {
    type = "electric-turret",
    name = "laser-turret-diamond-1",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-diamond-1.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-diamond-1" },
    max_health = Health.Tier8,
	resistances = Resistances.Tier8,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "452.25kJ",
      input_flow_limit = "25000kW",
      drain = "13.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=DIAMOND},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=DIAMOND},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(DIAMOND),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=DIAMOND},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(BRONZE_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(20, 30, "450kJ", "laser-diamond-1")
  },
  {
    type = "electric-turret",
    name = "laser-turret-diamond-2",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-diamond-2.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-diamond-2" },
    max_health = Health.Tier9,
	resistances = Resistances.Tier9,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "452.25kJ",
      input_flow_limit = "25000kW",
      drain = "13.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=DIAMOND},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=DIAMOND},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(DIAMOND),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=DIAMOND},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(SILVER_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(10, 40, "450kJ", "laser-diamond-2")
  },
  {
    type = "electric-turret",
    name = "laser-turret-diamond-3",
    icon = "__MAIN-DyTech-War__/graphics/turrets-laser/laser-diamond-3.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation" },
    minable = { mining_time = 0.5, result = "laser-turret-diamond-3" },
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
    corpse = "small-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
	fast_replaceable_group =  "laser-turret",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    dying_explosion = "medium-explosion",
    folding_speed = 0.05,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "452.25kJ",
      input_flow_limit = "25000kW",
      drain = "13.5kW",
      usage_priority = "primary-input",
    },
    folded_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{frame_count=1, line_length = 1, TINT=DIAMOND},
        laser_turret_extension_shadow{frame_count=1, line_length=1},
        laser_turret_extension_mask{frame_count=1, line_length=1}
      }
    },
    preparing_animation =
    {
      layers =
      {
        Laser_Turret_Start_Graphics{TINT=DIAMOND},
        laser_turret_extension_shadow{},
        laser_turret_extension_mask{}
      }
    },
    prepared_animation = Laser_Turret_Animation_Graphics(DIAMOND),
    folding_animation = 
    {
      layers =
      {
        Laser_Turret_Start_Graphics{run_mode = "backward", TINT=DIAMOND},
        laser_turret_extension_shadow{run_mode = "backward"},
        laser_turret_extension_mask{run_mode = "backward"}
      }
    },
    base_picture = Laser_Turret_Base_Graphics(GOLD_BASE),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters = Laser_Turret_Attack(5, 50, "450kJ", "laser-diamond-3")
  },
}
)