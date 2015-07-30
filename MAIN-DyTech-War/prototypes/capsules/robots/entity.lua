require "prototypes.internal-config"

data:extend(
{
  {
    type = "combat-robot",
    name = "marauder-turret",
    icon = "__base__/graphics/icons/destroyer.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="dytech-combat-capsules",
    order="c",
    max_health = (Health.Tier4*Capsules.Stationary_Extra_Factor),
	resistances = Resistances.Tier4,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = (Capsules.Live_Marauder*Capsules.Stationary_Extra_Factor),
    speed = 0.03,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-beam",
      cooldown = 20,
      range = 20,
      ammo_type =
      {
        category = "combat-robot-beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "marauder-beam",
            max_length = 20,
            duration = 20,
            source_offset = {0.15, -0.5},
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          y = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875},
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          y = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875}
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    }
  },
  {
    type = "combat-robot",
    name = "marauder",
    icon = "__base__/graphics/icons/destroyer.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="dytech-combat-capsules",
    order="c",
    max_health = Health.Tier4,
	resistances = Resistances.Tier4,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = Capsules.Live_Marauder,
    speed = 0.03,
    follows_player = true,
    friction = 0.01,
    range_from_player = 8.0,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-beam",
      cooldown = 20,
      range = 20,
      ammo_type =
      {
        category = "combat-robot-beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "marauder-beam",
            max_length = 20,
            duration = 20,
            source_offset = {0.15, -0.5},
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          y = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875},
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          y = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875}
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    }
  },
  {
    type = "combat-robot",
    name = "sharpshooter-turret",
    icon = "__base__/graphics/icons/destroyer.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="dytech-combat-capsules",
    order="c",
    max_health = (Health.Tier5*Capsules.Stationary_Extra_Factor),
	resistances = Resistances.Tier5,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = (Capsules.Live_Sharpshooter*Capsules.Stationary_Extra_Factor),
    speed = 0.03,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-beam",
      cooldown = 20,
      range = 40,
      ammo_type =
      {
        category = "combat-robot-beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "sharpshooter-beam",
            max_length = 40,
            duration = 20,
            source_offset = {0.15, -0.5},
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          y = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875},
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          y = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875}
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    }
  },
  {
    type = "combat-robot",
    name = "sharpshooter",
    icon = "__base__/graphics/icons/destroyer.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="dytech-combat-capsules",
    order="c",
    max_health = Health.Tier5,
	resistances = Resistances.Tier5,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = Capsules.Live_Sharpshooter,
    speed = 0.03,
    follows_player = true,
    friction = 0.01,
    range_from_player = 8.0,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-beam",
      cooldown = 20,
      range = 40,
      ammo_type =
      {
        category = "combat-robot-beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "sharpshooter-beam",
            max_length = 40,
            duration = 20,
            source_offset = {0.15, -0.5},
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          y = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875},
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          y = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875}
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    }
  },
  {
    type = "combat-robot",
    name = "frenzy-turret",
    icon = "__base__/graphics/icons/destroyer.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="dytech-combat-capsules",
    order="c",
    max_health = (Health.Tier6*Capsules.Stationary_Extra_Factor),
	resistances = Resistances.Tier6,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.9, -1.5}, {0.9, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = (Capsules.Live_Frenzy*Capsules.Stationary_Extra_Factor),
    speed = 0.03,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-beam",
      cooldown = 5,
      range = 30,
      ammo_type =
      {
        category = "combat-robot-beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "frenzy-beam",
            max_length = 30,
            duration = 20,
            source_offset = {0.15, -0.5},
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          y = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875},
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          y = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875}
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    }
  },
  {
    type = "combat-robot",
    name = "frenzy",
    icon = "__base__/graphics/icons/destroyer.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="dytech-combat-capsules",
    order="c",
    max_health = Health.Tier6,
	resistances = Resistances.Tier6,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = Capsules.Live_Frenzy,
    speed = 0.03,
    follows_player = true,
    friction = 0.01,
    range_from_player = 8.0,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "beam",
      ammo_category = "combat-robot-beam",
      cooldown = 5,
      range = 30,
      ammo_type =
      {
        category = "combat-robot-beam",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "frenzy-beam",
            max_length = 30,
            duration = 20,
            source_offset = {0.15, -0.5},
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          y = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875},
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          y = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot.png",
          priority = "high",
          line_length = 32,
          width = 45,
          height = 39,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.546875}
        },
        {
          filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-mask.png",
          priority = "high",
          line_length = 32,
          width = 27,
          height = 21,
          frame_count = 1,
          direction_count = 32,
          shift = {0.078125, -0.734375},
          apply_runtime_tint = true
        }
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/destroyer-robot/destroyer-robot-shadow.png",
      priority = "high",
      line_length = 32,
      width = 48,
      height = 32,
      frame_count = 1,
      direction_count = 32,
      shift = {0.78125, 0}
    }
  },
  {
    type = "combat-robot",
    name = "defender-turret",
    icon = "__base__/graphics/icons/defender.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    subgroup="capsule",
    order="e-a-a",
    max_health = 60 * 5,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = 60 * 45 * 5,
    speed = 0.01,
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "explosion"
        }
      }
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 20,
      projectile_center = {0, 1},
      projectile_creation_distance = 0.6,
      range = 15,
      sound = make_light_gunshot_sounds(),
      ammo_type =
      {
        category = "bullet",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            source_effects =
            {
              type = "create-explosion",
              entity_name = "explosion-gunshot-small"
            },
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "explosion-hit"
              },
              {
                type = "damage",
                damage = { amount = 25 , type = "physical"}
              }
            }
          }
        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/defender-robot/defender-robot.png",
          priority = "high",
          line_length = 16,
          width = 32,
          height = 33,
          frame_count = 1,
          direction_count = 16,
          shift = {0, 0.015625}
        },
        {
          filename = "__base__/graphics/entity/defender-robot/defender-robot-mask.png",
          priority = "high",
          line_length = 16,
          width = 18,
          height = 16,
          frame_count = 1,
          direction_count = 16,
          shift = {0, -0.125},
          apply_runtime_tint = true
        },
      }
    },
    shadow_idle =
    {
      filename = "__base__/graphics/entity/defender-robot/defender-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 43,
      height = 23,
      frame_count = 1,
      direction_count = 16,
      shift = {0.859375, 0.609375}
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/defender-robot/defender-robot.png",
          priority = "high",
          line_length = 16,
          width = 32,
          height = 33,
          frame_count = 1,
          direction_count = 16,
          shift = {0, 0.015625},
          y = 33
        },
        {
          filename = "__base__/graphics/entity/defender-robot/defender-robot-mask.png",
          priority = "high",
          line_length = 16,
          width = 18,
          height = 16,
          frame_count = 1,
          direction_count = 16,
          shift = {0, -0.125},
          apply_runtime_tint = true,
          y = 16
        },
      }
    },
    shadow_in_motion =
    {
      filename = "__base__/graphics/entity/defender-robot/defender-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 43,
      height = 23,
      frame_count = 1,
      direction_count = 16,
      shift = {0.859375, 0.609375}
    }
  },
}
)