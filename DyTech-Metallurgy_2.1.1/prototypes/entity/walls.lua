
BrickWall = {r=1, g=0.498, b=0.314, a=0.95}
TungstenWall = {r=0.08, g=0.08, b=0.08, a=0.95}

data:extend(
{
  {
    type = "wall",
    name = "brickwall",
    icon = "__DyTech-Metallurgy__/graphics/icons/brickwall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "brickwall"},
    max_health = 1500,
    repair_speed_modifier = 2,
    corpse = "brickwall-remnants",
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
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(BrickWall)
  },
  {
    type = "corpse",
    name = "brickwall-remnants",
    icon = "__DyTech-Metallurgy__/graphics/icons/brickwall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(BrickWall)
  },
  {
    type = "wall",
    name = "tungsten-wall",
    icon = "__DyTech-Metallurgy__/graphics/icons/tungsten-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "tungsten-wall"},
    max_health = 5000,
    repair_speed_modifier = 2,
    corpse = "tungsten-wall-remnants",
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
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(TungstenWall)
  },
  {
    type = "corpse",
    name = "tungsten-wall-remnants",
    icon = "__DyTech-Metallurgy__/graphics/icons/tungsten-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(TungstenWall)
  },
}
)