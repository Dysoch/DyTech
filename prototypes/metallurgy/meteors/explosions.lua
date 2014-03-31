data:extend(
{
  {
    type = "explosion",
    name = "meteor-impact-small",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        filename = "__base__/graphics/entity/huge-explosion/huge-explosion.png",
        priority = "extra-high",
        frame_width = 111,
        frame_height = 131,
        frame_count = 24,
        line_length = 5
      }
    },
    light = {intensity = 1, size = 50},
    smoke = "smoke",
    smoke_count = 20,
    smoke_slow_down_factor = 1,
    sound =
    {
      {
        filename = "__base__/sound/huge-explosion.wav",
        volume = 1.25
      }
    },
	action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 6.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 40, type = "explosion"}
                  }
                }
              }
            }
          }
        }
      }
    }
  },
}
)