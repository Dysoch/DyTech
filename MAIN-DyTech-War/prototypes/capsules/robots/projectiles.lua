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
            show_in_tooltip = true,
            entity_name = "marauder",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0},{1,0}}
          },
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
            show_in_tooltip = true,
            entity_name = "sharpshooter",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0}}
          },
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
            show_in_tooltip = true,
            entity_name = "frenzy",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{1,0},{-1,0},{0,1},{0,-1}}
          },
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
    name = "marauder-turret-capsule",
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
            show_in_tooltip = true,
            entity_name = "marauder-turret",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0},{1,0}}
          },
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
    name = "sharpshooter-turret-capsule",
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
            show_in_tooltip = true,
            entity_name = "sharpshooter-turret",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0}}
          },
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
    name = "frenzy-turret-capsule",
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
            show_in_tooltip = true,
            entity_name = "frenzy-turret",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{1,0},{-1,0},{0,1},{0,-1}}
          },
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
    name = "mixed-turret-capsule",
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
            show_in_tooltip = true,
            entity_name = "frenzy-turret",
            offsets = {{1,0},{-1,0},{0,1},{0,-1}}
          },
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "defender-turret",
            offsets = {{2,0},{-2,0},{0,2},{0,-2}}
          },
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "sharpshooter-turret",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7}}
          },
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
    name = "mixed-capsule",
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
            show_in_tooltip = true,
            entity_name = "frenzy",
            offsets = {{1,0},{-1,0},{0,1},{0,-1}}
          },
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "defender",
            offsets = {{2,0},{-2,0},{0,2},{0,-2}}
          },
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "sharpshooter",
            offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7}}
          },
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
}
)
