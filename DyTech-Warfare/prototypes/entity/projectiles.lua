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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-ruby.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-ruby.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-sapphire.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-sapphire.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-sapphire.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-emerald.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-emerald.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-emerald.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-topaz.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-topaz.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-topaz.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-ruby.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-sapphire.png",
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
      filename = "__DyTech-Warfare__/graphics/entity/laser/laser-emerald.png",
      frame_count = 1,
      width = 7,
      height = 14,
      priority = "high"
    },
    speed = 0.25
  },
  {
    type = "projectile",
    name = "marauder-capsule",
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
            entity_name = "marauder",
            offset = {-0.7, -0.7}
          },
          {
            type = "create-entity",
            entity_name = "marauder",
            offset = {-0.7, 0.7}
          },
          {
            type = "create-entity",
            entity_name = "marauder",
            offset = {0.7, -0.7}
          },
          {
            type = "create-entity",
            entity_name = "marauder",
            offset = {0.7, 0.7}
          },
          {
            type = "create-entity",
            entity_name = "marauder",
            offset = {0, 0}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
  {
    type = "projectile",
    name = "sharpshooter-capsule",
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
            entity_name = "sharpshooter",
            offset = {-0.7, -0.7}
          },
          {
            type = "create-entity",
            entity_name = "sharpshooter",
            offset = {-0.7, 0.7}
          },
          {
            type = "create-entity",
            entity_name = "sharpshooter",
            offset = {0.7, -0.7}
          },
          {
            type = "create-entity",
            entity_name = "sharpshooter",
            offset = {0.7, 0.7}
          },
          {
            type = "create-entity",
            entity_name = "sharpshooter",
            offset = {0, 0}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
  {
    type = "projectile",
    name = "frenzy-capsule",
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
            entity_name = "frenzy",
            offset = {-0.7, -0.7}
          },
          {
            type = "create-entity",
            entity_name = "frenzy",
            offset = {-0.7, 0.7}
          },
          {
            type = "create-entity",
            entity_name = "frenzy",
            offset = {0.7, -0.7}
          },
          {
            type = "create-entity",
            entity_name = "frenzy",
            offset = {0.7, 0.7}
          },
          {
            type = "create-entity",
            entity_name = "frenzy",
            offset = {0, 0}
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/destroyer-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
  {
    type = "projectile",
    name = "basic-grenade-2",
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
            entity_name = "huge-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 10,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 45, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/basic-grenade/basic-grenade.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/basic-grenade/basic-grenade-shadow.png",
      frame_count = 1,
      width = 24,
      height = 32,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "basic-grenade-3",
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
            entity_name = "huge-explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 15,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 80, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/basic-grenade/basic-grenade.png",
      frame_count = 1,
      width = 24,
      height = 24,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/basic-grenade/basic-grenade-shadow.png",
      frame_count = 1,
      width = 24,
      height = 32,
      priority = "high"
    }
  },
}
)
