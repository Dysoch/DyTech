data:extend(
{
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
