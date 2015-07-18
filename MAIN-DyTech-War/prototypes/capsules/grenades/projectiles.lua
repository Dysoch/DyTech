data:extend(
{
  {
    type = "projectile",
    name = "basic-grenade-2",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "create-entity",
            entity_name = "medium-explosion"
            },
            {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        perimeter = 9,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 90, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "explosion"
            }
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
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "create-entity",
            entity_name = "medium-explosion"
            },
            {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
            }
          }
        }
      },
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
            damage = {amount = 200, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "explosion"
            }
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
