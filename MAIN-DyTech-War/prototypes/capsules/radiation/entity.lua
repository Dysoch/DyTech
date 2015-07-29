data:extend(
{
  {
    type = "smoke-with-trigger",
    name = "radiation-cloud-1",
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
      scale = 9,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 60 * 30,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0, g = 0.05, b = 0, a = 0.01 },
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
            perimeter = 25,
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 5, type = "poison"}
              },
              {
                type = "damage",
                damage = { amount = 5, type = "acid"}
              },
            },
          }
        }
      }
    },
    action_frequency = 30
  },
  {
    type = "smoke-with-trigger",
    name = "radiation-cloud-2",
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
      scale = 18,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 60 * 60,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0, g = 0.05, b = 0, a = 0.01 },
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
            perimeter = 50,
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 20, type = "poison"}
              },
              {
                type = "damage",
                damage = { amount = 20, type = "acid"}
              },
            },
          }
        }
      }
    },
    action_frequency = 30
  },
  {
    type = "smoke-with-trigger",
    name = "radiation-cloud-3",
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
      scale = 27,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 60 * 60 * 2,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0, g = 0.05, b = 0, a = 0.01 },
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
            perimeter = 75,
            entity_flags = {"breaths-air", "player-creation", "placeable-neutral", "placeable-player", "placeable-enemy"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 45, type = "poison"}
              },
              {
                type = "damage",
                damage = { amount = 45, type = "acid"}
              },
            },
          }
        }
      }
    },
    action_frequency = 30
  },
}
)