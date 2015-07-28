require "prototypes.internal-config"

data:extend(
{
  {
    type = "smoke-with-trigger",
    name = "poison-cloud-1",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 3,
      line_length = 7,
      scale = 4.5,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 30,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.2, g = 0.9, b = 0.2 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 15,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 8, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },
  {
    type = "smoke-with-trigger",
    name = "poison-cloud-2",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 3,
      line_length = 7,
      scale = 5.5,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 45,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.2, g = 0.9, b = 0.2 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 19,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 16, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },
}
)