
ChitinWalls = {r=0.545, g=0.271, b=0.075, a=0.9}

data:extend(
{
  {
    type = "wall",
    name = "chitin-wall",
    icon = "__DyTech-Warfare__/graphics/icons/chitin-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "chitin-wall"},
    max_health = 2500,
    repair_speed_modifier = 2,
    corpse = "chitin-wall-remnants",
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 15
      },
      {
        type = "explosion",
        decrease = 2.5,
        percent = 12
      },
      {
        type = "fire",
        percent = 75
      },
      {
        type = "laser",
        percent = 10
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    pictures = WallSetup(ChitinWalls)
  },
  {
    type = "corpse",
    name = "chitin-wall-remnants",
    icon = "__DyTech-Warfare__/graphics/icons/chitin-wall-remnants.png",
    flags = {"placeable-neutral", "player-creation"},
	order = "sw-r",
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    animation = WallRemains(ChitinWalls)
  },
}
)