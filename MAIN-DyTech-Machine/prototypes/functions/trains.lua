-- require "prototypes.functions.trains"

function Animation_Locomotive(TINT)
return
    {
      priority = "very-low",
      width = 346,
      height = 248,
      axially_symmetrical = false,
      direction_count = 256,
      filenames =
      {
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.9, -0.45},
	  tint = TINT
    }
end

function Animation_Cargo_Wagon(TINT)
return
    {
      priority = "very-low",
      width = 285,
      height = 218,
      back_equals_front = true,
      direction_count = 128,
      filenames =
      {
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-1.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-2.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-3.png",
        "__base__/graphics/entity/cargo-wagon/cargo-wagon-spritesheet-4.png"
      },
      line_length = 4,
      lines_per_file = 8,
      shift = {0.7, -0.45},
	  tint = TINT
    }
end