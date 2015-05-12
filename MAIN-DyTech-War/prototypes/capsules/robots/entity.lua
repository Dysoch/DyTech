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
      ammo_category = "combat-robot-laser",
      cooldown = 12,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "laser-emerald-3",
            starting_speed = 0.4
          }
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/destroyer.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
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
      ammo_category = "combat-robot-laser",
      cooldown = 12,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "laser-emerald-3",
            starting_speed = 0.4
          }
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/destroyer.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
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
      ammo_category = "combat-robot-laser",
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "laser-topaz-3",
            starting_speed = 0.4
          }
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/destroyer.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
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
      ammo_category = "combat-robot-laser",
      cooldown = 15,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "laser-topaz-3",
            starting_speed = 0.4
          }
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/destroyer.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
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
      ammo_category = "combat-robot-laser",
      cooldown = 3,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 20,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "laser-sapphire-2",
            starting_speed = 0.8
          }
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/destroyer.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
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
      ammo_category = "combat-robot-laser",
      cooldown = 3,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 20,
      sound =
      {
        {
          filename = "__base__/sound/laser.ogg",
          volume = 0.4
        }
      },
      ammo_type =
      {
        category = "combat-robot-laser",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "laser-sapphire-2",
            starting_speed = 0.8
          }
        }
      }
    },
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/destroyer.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
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
      ammo_category = "bullet",
      cooldown = 20,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 15,
      sound =
      {
        {
          filename = "__base__/sound/gunshot.ogg",
          volume = 0.3
        }
      },
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
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "explosion-gunshot"
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
    picture =
    {
      filename = "__base__/graphics/entity/combat-robot/defender.png",
      priority = "high",
      width = 37,
      height = 34
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot/combat-robot-shadow.png",
      priority = "high",
      width = 52,
      height = 37
    }
  },
}
)