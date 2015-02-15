require "util"
data:extend(
{
  {
    type = "ammo-turret",
    name = "flame-thrower-turret",
    icon = "__MAIN-DyTech-War__/graphics/turrets-flame/flame-thrower-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "flame-thrower-turret"},
    max_health = 200,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9 }, {0.4, 0.9}},
    selection_box = {{-0.5, -1 }, {0.5, 1}},
    rotation_speed = 0.03,
    preparing_speed = 0.16,
    folding_speed = 0.08,
    dying_explosion = "huge-explosion",
    inventory_size = 1,
    automated_ammo_count = 10,
    folded_animation = (function()
                          local res = util.table.deepcopy(gun_turret_extension)
                          res.frame_count = 1
                          res.line_length = 1
                          return res
                       end)(),
    preparing_animation = gun_turret_extension,
    prepared_animation =
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret.png",
      priority = "medium",
      width = 178,
      height = 107,
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
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 43,
      height = 28,
      shift = { 0, -0.125 + 0.6 }
    },
    attack_parameters =
    {
      ammo_category = "flame-thrower",
      cooldown = 0,
      projectile_center = {0, 0.0},
      projectile_creation_distance = 2.1,
      --damage_modifier = 3,
      shell_particle = 
      {
        name = "shell-particle",
        direction_deviation = 0.3,
        speed = 0.1,
        speed_deviation = 0.5,
        center = {0, 0.0},
        creation_distance = 0.6,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      range = 6,
      sound =
      {
        {
          filename = "__base__/sound/gunshot.ogg",
          volume = 0.03
        }
      }
    }
  },
}
)