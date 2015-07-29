data:extend(
{
  {
    type = "smoke-with-trigger",
    name = "firestorm-cloud-1",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 1,
      line_length = 7,
      scale = 3,
    },
    slow_down_factor = 0,
    affected_by_wind = true,
    cyclic = true,
    duration = 60 * 60 * 10,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 1, g = 0.271, b = 0, a =0.5 },
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
                damage = { amount = 25, type = "fire"}
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
    name = "firestorm-cloud-2",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 1,
      line_length = 7,
      scale = 5.5,
    },
    slow_down_factor = 0,
    affected_by_wind = true,
    cyclic = true,
    duration = 60 * 60 * 25,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 1, g = 0.271, b = 0, a =0.5 },
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
                damage = { amount = 100, type = "fire"}
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
    name = "firestorm-cloud-3",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 1,
      line_length = 7,
      scale = 7,
    },
    slow_down_factor = 0,
    affected_by_wind = true,
    cyclic = true,
    duration = 60 * 60 * 40,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 1, g = 0.271, b = 0, a =0.5 },
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
                damage = { amount = 400, type = "fire"}
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