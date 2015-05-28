data:extend(
{
  {
    type = "projectile",
    name = "slowdown-capsule-1",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "area",
      perimeter = 13.5,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-sticker",
          sticker = "slowdown-sticker-1"
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  },
  {
    type = "projectile",
    name = "slowdown-capsule-2",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "area",
      perimeter = 18,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-sticker",
          sticker = "slowdown-sticker-2"
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/slowdown-capsule/slowdown-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  },
}
)
