data:extend(
{
  {
    type = "sticker",
    name = "slowdown-sticker-1",
    flags = {"not-on-map"},
    --icon = "__base__/graphics/icons/slowdown-sticker.png",
    flags = {},
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
      priority = "extra-high",
      width = 11,
      height = 11,
      frame_count = 13,
      animation_speed = 0.4
    },
    duration_in_ticks = 60 * 60,
    magnitude = 0.75
  },
  {
    type = "sticker",
    name = "slowdown-sticker-2",
    flags = {"not-on-map"},
    --icon = "__base__/graphics/icons/slowdown-sticker.png",
    flags = {},
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
      priority = "extra-high",
      width = 11,
      height = 11,
      frame_count = 13,
      animation_speed = 0.4
    },
    duration_in_ticks = 60 * 60 * 2,
    magnitude = 1.0
  },
}
)