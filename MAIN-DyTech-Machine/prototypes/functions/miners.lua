-- require "prototypes.functions.miners"

function Animation_Miner(TINT)
return
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/basic-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		tint = TINT
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		tint = TINT
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		tint = TINT
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/basic-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		tint = TINT
      }
    }
end