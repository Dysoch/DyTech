data.raw["projectile"]["laser"].damage = { amount = 4, type = "laser"}
data.raw["projectile"]["laser"].filename = "__MAIN-DyTech-War__/graphics/lasers/laser-ruby.png"
data.raw["projectile"]["laser"].speed = 0.10

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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-ruby.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-ruby.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-sapphire.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-sapphire.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-sapphire.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-emerald.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-emerald.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-emerald.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-topaz.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-topaz.png",
      frame_count = 1,
      width = 7,
      height = 14,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-topaz.png",
      frame_count = 1,
      width = 7,
      height = 14,
      priority = "high"
    },
    speed = 0.5
  },
  {
    type = "projectile",
    name = "laser-shotgun-ruby-1",
    acceleration = 0.005,
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = 0.005,
    direction_only = true,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-ruby.png",
      frame_count = 1,
      width = 7,
      height = 14,
      priority = "high"
    },
    speed = 0.10
  },
  {
    type = "projectile",
    name = "laser-shotgun-sapphire-1",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = 0.010,
    direction_only = true,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-sapphire.png",
      frame_count = 1,
      width = 7,
      height = 14,
      priority = "high"
    },
    speed = 0.15
  },
  {
    type = "projectile",
    name = "laser-shotgun-emerald-1",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = 0.015,
    direction_only = true,
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
      filename = "__MAIN-DyTech-War__/graphics/lasers/laser-emerald.png",
      frame_count = 1,
      width = 7,
      height = 14,
      priority = "high"
    },
    speed = 0.25
  },
}
)
