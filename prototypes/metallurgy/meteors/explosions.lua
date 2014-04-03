data:extend(
{
  {
    type = "explosion",
    name = "meteor-impact-small",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
        priority = "extra-high",
        frame_width = 111,
        frame_height = 131,
        frame_count = 24,
        line_length = 5
      }
    },
    light = {intensity = 1, size = 100},
    smoke = "smoke",
    smoke_count = 50,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.wav",
        volume = 1.6
      }
    },
  },
  {
    type = "explosion",
    name = "meteor-impact-medium",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        scale = 2,
        filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
        priority = "extra-high",
        frame_width = 111,
        frame_height = 131,
        frame_count = 24,
        line_length = 5
      }
    },
    light = {intensity = 1, size = 200},
    smoke = "smoke",
    smoke_count = 50,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.wav",
        volume = 1.6
      }
    },
  },
  {
    type = "explosion",
    name = "meteor-impact-large",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        scale = 4,
        filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
        priority = "extra-high",
        frame_width = 111,
        frame_height = 131,
        frame_count = 24,
        line_length = 5
      }
    },
    light = {intensity = 1, size = 400},
    smoke = "smoke",
    smoke_count = 50,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.wav",
        volume = 1.6
      }
    },
  },
  {
    type = "explosion",
    name = "meteor-impact-comet",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        scale = 3,
        filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
        priority = "extra-high",
        frame_width = 111,
        frame_height = 131,
        frame_count = 24,
        line_length = 5
      }
    },
    light = {intensity = 1, size = 300},
    smoke = "smoke",
    smoke_count = 50,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.wav",
        volume = 1.6
      }
    },
  },
  {
    type = "explosion",
    name = "meteor-impact-asteroid",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        scale = 12,
		filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
        priority = "extra-high",
        frame_width = 111,
        frame_height = 131,
        frame_count = 24,
        line_length = 5
      }
    },
    light = {intensity = 1, size = 1200},
    smoke = "smoke",
    smoke_count = 50,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.wav",
        volume = 1.6
      }
    },
  },
}
)