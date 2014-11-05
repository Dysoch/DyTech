require("prototypes.entity.wall-functions")

SandWall = {r=1, g=1, b=0.35, a=0.9}

data:extend(
{
  {
    type = "wall",
    name = "sandwall",
    icon = "__DyTech-Core__/graphics/icons/sandwall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "sandwall"},
    max_health = 750,
    repair_speed_modifier = 2,
    corpse = "sandwall-remnants",
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
    pictures = WallSetup(SandWall)
  },
  {
    type = "corpse",
    name = "sandwall-remnants",
    icon = "__DyTech-Core__/graphics/icons/sandwall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(SandWall)
  },
}
)