data:extend(
{
  {
    type = "corpse",
    name = "dog-player-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-b[wildlife]-a[dog-player]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation =
    {
      frame_width = 142,
      frame_height = 97,
      frame_count = 17,
      direction_count = 16,
      axially_symetric = false,
      shift = {0.328125, -0.09375},
      stripes =
      {
        {
          filename = "__DyTech-Genetics__/graphics/entity/dogs-player/dogs-die-1.png",
          width_in_frames = 9
        },
        {
          filename = "__DyTech-Genetics__/graphics/entity/dogs-player/dogs-die-2.png",
          width_in_frames = 8
        }
      },
    },
  },
  {
    type = "corpse",
    name = "dog-enemy-corpse",
    icon = "__base__/graphics/icons/small-biter-corpse.png",
    selection_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-b[wildlife]-a[dog-enemy]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation =
    {
      scale = 0.6,
	  frame_width = 142,
      frame_height = 97,
      frame_count = 17,
      direction_count = 16,
      axially_symetric = false,
      shift = {0.328125, -0.09375},
      stripes =
      {
        {
          filename = "__DyTech-Genetics__/graphics/entity/dogs-enemy/dogs-die-1.png",
          width_in_frames = 9
        },
        {
          filename = "__DyTech-Genetics__/graphics/entity/dogs-enemy/dogs-die-2.png",
          width_in_frames = 8
        }
      },
    },
  },
}
)