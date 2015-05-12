data:extend(
{
  {
    type = "projectile",
    name = "berserker-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 40, type = "fire"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },
  {
    type = "projectile",
    name = "elder-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 50, type = "laser"}
          },
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },
  {
    type = "projectile",
    name = "king-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "poison-cloud-king"
          },
          {
            type = "damage",
            damage = {amount = 50, type = "acid"}
          },
          {
            type = "damage",
            damage = {amount = 50, type = "poison"}
          },
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },
}
)
