data:extend(
{
  {
    type = "projectile",
    name = "laser-ruby-1",
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 6, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-ruby.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.10
  },
  {
    type = "projectile",
    name = "laser-ruby-2",
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 8, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-ruby.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.10
  },
  {
    type = "projectile",
    name = "laser-sapphire-1",
    acceleration = 0.010,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 10, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-sapphire.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.15
  },
  {
    type = "projectile",
    name = "laser-sapphire-2",
    acceleration = 0.010,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 13, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-sapphire.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.15
  },
  {
    type = "projectile",
    name = "laser-sapphire-3",
    acceleration = 0.010,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 16, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-sapphire.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.15
  },
  {
    type = "projectile",
    name = "laser-emerald-1",
    acceleration = 0.015,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 20, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-emerald.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.25
  },
  {
    type = "projectile",
    name = "laser-emerald-2",
    acceleration = 0.015,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 23, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-emerald.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.25
  },
  {
    type = "projectile",
    name = "laser-emerald-3",
    acceleration = 0.015,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 25, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 10},
    animation =
    {
      filename = "__DyTech-Graphics__/graphics/entity/laser/laser-emerald.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.25
  },
  {
    type = "projectile",
    name = "laser-topaz-1",
    acceleration = 0.015,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 25, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.8, size = 10},
    animation =
    {
      filename = "__DyTech__/graphics/entity/laser/laser-topaz.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.5
  },
  {
    type = "projectile",
    name = "laser-topaz-2",
    acceleration = 0.02,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 50, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.8, size = 10},
    animation =
    {
      filename = "__DyTech__/graphics/entity/laser/laser-topaz.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.5
  },
  {
    type = "projectile",
    name = "laser-topaz-3",
    acceleration = 0.025,
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
            entity_name = "laser-bubble"
          },
          {
            type = "damage",
            damage = { amount = 75, type = "laser"}
          }
        }
      }
    },
    light = {intensity = 0.8, size = 10},
    animation =
    {
      filename = "__DyTech__/graphics/entity/laser/laser-topaz.png",
      frame_count = 1,
      frame_width = 7,
      frame_height = 14,
      priority = "high"
    },
    speed = 0.5
  },
}
)
