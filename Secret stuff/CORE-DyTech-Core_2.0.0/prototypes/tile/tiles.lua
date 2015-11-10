data.raw["tile"]["sand"].needs_correction = false
data.raw["tile"]["sand"].minable = {hardness = 0.1, mining_time = 0.25, result = "sand"}
data.raw["tile"]["sand"].mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"}
data.raw["tile"]["sand"].walking_speed_modifier = 0.9

local sandbag_vehicle_speed_modifier = 1.1

data:extend(
{
  {
    type = "tile",
    name = "sandbag",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "sandbag"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.1,
    layer = 101,
    variants =
    {
      main =
      {
        {
          picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/2.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/4.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner =
      {
        picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/side.png",
        count = 8
      },
      u_transition =
      {
        picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/u.png",
        count = 8
      },
      o_transition =
      {
        picture = "__CORE-DyTech-Core__/graphics/terrain/sandbag/o.png",
        count = 1
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
      }
    },
    map_color={r=139, g=104, b=39},
    ageing=0,
    vehicle_friction_modifier = sandbag_vehicle_speed_modifier
  },
})