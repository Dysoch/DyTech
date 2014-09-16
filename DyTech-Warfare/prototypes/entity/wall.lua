data:extend(
{
  {
    type = "wall",
    name = "chitin-wall",
    icon = "__DyTech-Warfare__/graphics/icons/chitin-wall.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "chitin-wall"},
    max_health = 1500,
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
    pictures =
    {
      single =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-single.png",
          priority = "extra-high",
          width = 33,
          height = 58,
          shift = {0.1, 0.1}
        }
      },
      straight_vertical =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-straight-vertical-1.png",
          priority = "extra-high",
          width = 51,
          height = 32,
          shift = {0.296875, 0}
        },
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-straight-vertical-2.png",
          priority = "extra-high",
          width = 51,
          height = 32,
          shift = {0.296875, 0}
        }
      },
      straight_vertical_under_ending =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-straight-vertical-under-ending.png",
          priority = "extra-high",
          width = 51,
          height = 32,
          shift = {0.296875, 0}
        }
      },
      straight_horizontal =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-straight-horizontal-1.png",
          priority = "extra-high",
          width = 32,
          height = 57,
          shift = {0, 0.078125}
        },
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-straight-horizontal-2.png",
          priority = "extra-high",
          width = 32,
          height = 57,
          shift = {0, 0.078125}
        },
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-straight-horizontal-3.png",
          priority = "extra-high",
          width = 32,
          height = 55,
          shift = {0, 0.078125}
        }
      },
      corner_right_up =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-corner-right-up.png",
          priority = "extra-high",
          width = 32,
          height = 53,
          shift = {0, 0.171875}
        }
      },
      corner_right_down =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-corner-right-down.png",
          priority = "extra-high",
          width = 32,
          height = 42,
          shift = {0, -0.15625}
        }
      },
      corner_left_down =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-corner-left-down.png",
          priority = "extra-high",
          width = 46,
          height = 42,
          shift = {0.21875, -0.15625}
        }
      },
      corner_left_up =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-corner-left-up.png",
          priority = "extra-high",
          width = 51,
          height = 58,
          shift = {0.296875, 0.03125}
        }
      },
      t_up =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-t-up.png",
          priority = "extra-high",
          width = 32,
          height = 44,
          shift = {0, -0.1875}
        }
      },
      t_down =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-t-down.png",
          priority = "extra-high",
          width = 32,
          height = 53,
          shift = {0, 0.140625}
       }
      },
      t_right =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-t-right.png",
          priority = "extra-high",
          width = 51,
          height = 38,
          shift = {0.296875, -0.09375}
        }
      },
      t_left =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-t-left.png",
          priority = "extra-high",
          width = 32,
          height = 38,
          shift = {0, -0.09375}
        }
      },
      cross =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-cross.png",
          priority = "extra-high",
          width = 32,
          height = 38,
          shift = {0, -0.09375}
        }
      },
      ending_up =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-ending-up.png",
          priority = "extra-high",
          width = 64,
          height = 47,
          shift = {0.5, 0.234375}
        }
      },
      ending_down =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-ending-down.png",
          priority = "extra-high",
          width = 51,
          height = 36,
          shift = {0.296875, -0.0625}
        }
      },
      ending_right =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-ending-right.png",
          priority = "extra-high",
          width = 32,
          height = 58,
          shift = {0, 0.0625}
        }
      },
      ending_left =
      {
        {
          filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/chitin-wall-ending-left.png",
          priority = "extra-high",
          width = 44,
          height = 57,
          shift = {0.1875, 0.078125}
        }
      }
    }
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
    animation = 
    {
      {
        frame_width = 36,
        frame_height = 36,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-01.png"
      },
      {
        frame_width = 38,
        frame_height = 35,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-02.png"
      },
      {
        frame_width = 35,
        frame_height = 36,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-03.png"
      },
      {
        frame_width = 41,
        frame_height = 36,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-04.png"
      },
      {
        frame_width = 35,
        frame_height = 35,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-05.png"
      },
      {
        frame_width = 50,
        frame_height = 37,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-06.png"
      },
      {
        frame_width = 54,
        frame_height = 40,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-07.png"
      },
      {
        frame_width = 43,
        frame_height = 45,
        frame_count = 1,
        direction_count = 1,
        filename = "__DyTech-Warfare__/graphics/entity/chitin-wall/remains/chitin-wall-remain-08.png"
      }
    }
  },
}
)