data:extend(
{
  {
    type = "smoke-with-trigger",
    name = "acid-cloud-1",
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
      scale = 3,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 30,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.678, g = 1, b = 0.184 },
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
            perimeter = 10,
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 5, type = "acid"}
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
    name = "acid-cloud-2",
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
    color = { r = 0.678, g = 1, b = 0.184 },
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
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 10, type = "acid"}
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
    name = "acid-cloud-3",
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
    duration = 60 * 60,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.678, g = 1, b = 0.184 },
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
            perimeter = 20,
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 20, type = "acid"}
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