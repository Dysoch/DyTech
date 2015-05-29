require "util"
require "prototypes.internal-config"
require "prototypes.functions.turrets"

data:extend(
{
  {
    type = "ammo-turret",
    name = "sniper-turret",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "sniper-turret"},
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(SniperAnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(SniperAnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(SniperAnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(SniperAnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(SniperBaseTint),
    attack_parameters = Gun_Turret_Attack("sniper-ammo", 2*60, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-1",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-1"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun1AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun1AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun1AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun1AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun1BaseTint),
    attack_parameters = Gun_Turret_Attack("bullet", 10, 26),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-2",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-2"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun2AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun2AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun2AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun2AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun2BaseTint),
    attack_parameters = Gun_Turret_Attack("shotgun-shell", 15, 26),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-3",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-3"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun3AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun3AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun3AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun3AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun3BaseTint),
    attack_parameters = Gun_Turret_Attack("rocket", 30, 40),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-4",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-4"},
    max_health = Health.Tier3,
	resistances = Resistances.Tier3,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun4AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun4AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun4AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun4AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun4BaseTint),
    attack_parameters = Gun_Turret_Attack("cannon-shell", 20, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-5",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-5"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun5AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun5AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun5AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun5AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun5BaseTint),
    attack_parameters = Gun_Turret_Attack("capsule", 60*30, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-6",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-6"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun6AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun6AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun6AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun6AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun6BaseTint),
    attack_parameters = Gun_Turret_Attack("capsule", 60*30, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-7",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-7"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun7AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun7AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun7AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun7AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun7BaseTint),
    attack_parameters = Gun_Turret_Attack("capsule", 60*30, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-1-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-1-armored"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun1AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun1AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun1AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun1AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun1BaseTint),
    attack_parameters = Gun_Turret_Attack("bullet", 10, 26),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-2-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-2-armored"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun2AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun2AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun2AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun2AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun2BaseTint),
    attack_parameters = Gun_Turret_Attack("shotgun-shell", 15, 26),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-3-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-3-armored"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun3AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun3AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun3AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun3AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun3BaseTint),
    attack_parameters = Gun_Turret_Attack("rocket", 30, 40),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-4-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-4-armored"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun4AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun4AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun4AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun4AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun4BaseTint),
    attack_parameters = Gun_Turret_Attack("cannon-shell", 20, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-5-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-5-armored"},
    max_health = Health.Tier10,
	resistances = Resistances.Tier10,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun5AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun5AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun5AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun5AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun5BaseTint),
    attack_parameters = Gun_Turret_Attack("capsule", 60*30, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-6-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-6-armored"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun6AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun6AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun6AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun6AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun6BaseTint),
    attack_parameters = Gun_Turret_Attack("capsule", 60*30, 50),
  },
  {
    type = "ammo-turret",
    name = "gun-turret-7-armored",
    icon = "__MAIN-DyTech-War__/graphics/turrets-gun/sniper-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "gun-turret-7-armored"},
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
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
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun7AnimationTint))
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension_DyTech(Gun7AnimationTint),
    prepared_animation = Gun_Turret_Prepared_Animation(Gun7AnimationTint),
    folding_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension_DyTech(Gun7AnimationTint))
                          res.run_mode = "backward"
                          return res
                       end)(),
    base_picture = Gun_Turret_Base(Gun7BaseTint),
    attack_parameters = Gun_Turret_Attack("capsule", 60*30, 50),
  },
}
)