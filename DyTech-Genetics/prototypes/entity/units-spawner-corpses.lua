function doglaircorpse(scalesize)
return
  {
    scale = scalesize,
	frame_width = 320,
    frame_height = 320,
    frame_count = 1,
    axially_symmetrical = false,
    shift = {0, 0},
    direction_count = 1,
    stripes =
    {
      {
        filename = "__DyTech-Genetics__/graphics/entity/spawners/dog-lair-corpse.png",
        width_in_frames = 1,
        height_in_frames = 1,
      }
    }
  }
end

function birdnestcorpse(scalesize)
return
  {
    scale = scalesize,
	frame_width = 238,
    frame_height = 184,
    frame_count = 1,
    axially_symmetrical = false,
    shift = {0, 0},
    direction_count = 1,
    stripes =
    {
      {
        filename = "__DyTech-Genetics__/graphics/entity/spawners/bird-nest-corpse.png",
        width_in_frames = 1,
        height_in_frames = 1,
      }
    }
  }
end

data:extend(
{
  {
    type = "corpse",
    name = "dog-lair-corpse",
    dying_speed = 0.04,
    order="b-c-g",
    final_render_layer = "corpse",
    animation =
    {
      doglaircorpse(1),
    }
  },
  --[[{
    type = "corpse",
    name = "bird-nest-corpse",
    dying_speed = 0.04,
    order="b-c-g",
    final_render_layer = "corpse",
    animation =
    {
      birdnestcorpse(1),
    }
  },]]--
}
)