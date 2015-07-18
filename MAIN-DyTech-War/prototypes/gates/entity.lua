require("prototypes.functions.gates")

ChitinWalls = {r=0.545, g=0.271, b=0.075, a=0.9}
SandWall = {r=1, g=1, b=0.35, a=0.9}
TungstenWall = {r=0.08, g=0.08, b=0.08, a=0.95}

data:extend(
{
  {
    type = "gate",
    name = "sand-wall-gate",
    icon = "__base__/graphics/icons/gate.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    fast_replaceable_group = "wall",
    minable = {hardness = 0.2, mining_time = 0.5, result = "sand-wall-gate"},
    max_health = 750,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.0666666,
    activation_distance = 3,
    timeout_to_close = 5,
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 10
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 10
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 100
      }
    },
    vertical_animation = vertical_animation_Tint(SandWall),
    horizontal_animation = horizontal_animation_Tint(SandWall),
    vertical_base = vertical_base(),
    horizontal_rail_animation_left = horizontal_rail_animation_left_Tint(SandWall),
    horizontal_rail_animation_right = horizontal_rail_animation_right_Tint(SandWall),
    vertical_rail_animation_left = vertical_rail_animation_left_Tint(SandWall),
    vertical_rail_animation_right = vertical_rail_animation_right_Tint(SandWall),
    vertical_rail_base = vertical_rail_base(),
    horizontal_rail_base = horizontal_rail_base(),
    vertical_rail_base_mask = vertical_rail_base_mask(),
    horizontal_rail_base_mask = horizontal_rail_base_mask(),
    horizontal_base = horizontal_base(),
    wall_patch = wall_patch_Tint(SandWall),
    wall_diode_green =
    {
      filename = "__base__/graphics/entity/gate/wall-diode-green.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    },
    wall_diode_green_light =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    },
    wall_diode_red =
    {
      filename = "__base__/graphics/entity/gate/wall-diode-red.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    },
    wall_diode_red_light =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
  },
  {
    type = "gate",
    name = "tungsten-wall-gate",
    icon = "__MAIN-DyTech-War__/graphics/walls/tungsten-wall.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    fast_replaceable_group = "wall",
    minable = {hardness = 0.2, mining_time = 0.5, result = "tungsten-wall-gate"},
    max_health = 5000,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.0666666,
    activation_distance = 3,
    timeout_to_close = 5,
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 10
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 10
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 100
      }
    },
    vertical_animation = vertical_animation_Tint(TungstenWall),
    horizontal_animation = horizontal_animation_Tint(TungstenWall),
    vertical_base = vertical_base(),
    horizontal_rail_animation_left = horizontal_rail_animation_left_Tint(TungstenWall),
    horizontal_rail_animation_right = horizontal_rail_animation_right_Tint(TungstenWall),
    vertical_rail_animation_left = vertical_rail_animation_left_Tint(TungstenWall),
    vertical_rail_animation_right = vertical_rail_animation_right_Tint(TungstenWall),
    vertical_rail_base = vertical_rail_base(),
    horizontal_rail_base = horizontal_rail_base(),
    vertical_rail_base_mask = vertical_rail_base_mask(),
    horizontal_rail_base_mask = horizontal_rail_base_mask(),
    horizontal_base = horizontal_base(),
    wall_patch = wall_patch_Tint(TungstenWall),
    wall_diode_green =
    {
      filename = "__base__/graphics/entity/gate/wall-diode-green.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    },
    wall_diode_green_light =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    },
    wall_diode_red =
    {
      filename = "__base__/graphics/entity/gate/wall-diode-red.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    },
    wall_diode_red_light =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
  },
}
)