data:extend(
{
  {
    type = "explosion",
    name = "item-pickup-dytech",
    animation_speed = 5,
    animations =
    {
      {
        filename = "__DyTech-Core__/graphics/particles/blank.png",
        priority = "extra-high",
        width = 16,
        height = 16,
        frame_count = 16,
        line_length = 16
      }
    },
    light = {intensity = 1, size = 3},
    smoke = "smoke",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.ogg",
        volume = 0
      }
    }
  },
})