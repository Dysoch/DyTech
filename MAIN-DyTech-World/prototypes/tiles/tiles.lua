local autoplace_utils = require("autoplace_utils")

local snow_vehicle_speed_modifier = 2

local function autoplace_settings(noise_layer, rectangles)
  local ret = {}

  if noise_layer then
    ret = {
      {
        influence = 0.1,
        noise_layer = noise_layer,
        noise_persistence = 0.7,
        octaves_difference = -1
      }
    }
  end

  autoplace_utils.peaks(rectangles, ret)

  return { peaks = ret }
end

function water_autoplace_settings(from_depth, rectangles)
  local ret =
  {
    {
      -- Water and deep water have absolute priority. We simulate this by giving
      -- them absurdly large influence
      influence = 1e3 + from_depth,
      elevation_optimal = -5000 - from_depth,
      elevation_range = 5000,
      elevation_max_range = 5000, -- everywhere below elevation 0 and nowhere else
    }
  }

  if rectangles == nil then
    ret[2] = { influence = 1 }
  end

  autoplace_utils.peaks(rectangles, ret)

  return { peaks = ret }
end

data:extend(
{
  {
    type = "tile",
    name = "snow",
    collision_mask = {"ground-tile", "doodad-layer", "resource-layer"},
    autoplace = autoplace_settings("snow", {{{0, 0.3}, {-25, 0.1}}}),
    layer = 45,
    variants =
    {
      main =
      {
        {
          picture = "__MAIN-DyTech-World__/graphics/terrain/snow/snow1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__MAIN-DyTech-World__/graphics/terrain/snow/snow2.png",
          count = 16,
          size = 2,
          probability = 0.39,
          weights = {0.025, 0.010, 0.013, 0.025, 0.025, 0.100, 0.100, 0.005, 0.010, 0.010, 0.005, 0.005, 0.001, 0.015, 0.020, 0.020}
        },
        {
          picture = "__MAIN-DyTech-World__/graphics/terrain/snow/snow4.png",
          count = 22,
          line_length = 11,
          size = 4,
          probability = 1,
          weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020, 0.010, 0.100, 0.025, 0.100, 0.100, 0.100}
        }
      },
      inner_corner =
      {
        picture = "__MAIN-DyTech-World__/graphics/terrain/snow/snow-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__MAIN-DyTech-World__/graphics/terrain/snow/snow-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__MAIN-DyTech-World__/graphics/terrain/snow/snow-side.png",
        count = 8
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/grass-01.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/grass-02.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/grass-03.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/grass-04.ogg",
        volume = 0.8
      }
    },
    map_color={r=255, g=250, b=250},
    ageing=0.00045,
    vehicle_friction_modifier = snow_vehicle_speed_modifier
  },
  {
    type = "tile",
    name = "snow-dark",
    collision_mask = {"ground-tile", "doodad-layer", "resource-layer"},
    autoplace = autoplace_settings("snow-dark", {{{0, 0.3}, {-25, 0.1}}}),
    layer = 46,
    variants =
    {
      main =
      {
        {
          picture = "__MAIN-DyTech-World__/graphics/terrain/snow-dark/snow-dark1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__MAIN-DyTech-World__/graphics/terrain/snow-dark/snow-dark2.png",
          count = 16,
          size = 2,
          probability = 0.39,
          weights = {0.025, 0.010, 0.013, 0.025, 0.025, 0.100, 0.100, 0.005, 0.010, 0.010, 0.005, 0.005, 0.001, 0.015, 0.020, 0.020}
        },
        {
          picture = "__MAIN-DyTech-World__/graphics/terrain/snow-dark/snow-dark4.png",
          count = 22,
          line_length = 11,
          size = 4,
          probability = 1,
          weights = {0.090, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.025, 0.125, 0.005, 0.010, 0.100, 0.100, 0.010, 0.020, 0.020, 0.010, 0.100, 0.025, 0.100, 0.100, 0.100}
        }
      },
      inner_corner =
      {
        picture = "__MAIN-DyTech-World__/graphics/terrain/snow-dark/snow-dark-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__MAIN-DyTech-World__/graphics/terrain/snow-dark/snow-dark-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__MAIN-DyTech-World__/graphics/terrain/snow-dark/snow-dark-side.png",
        count = 8
      }
    },
    walking_sound =
    {
      {
        filename = "__base__/sound/walking/dirt-02.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/dirt-03.ogg",
        volume = 0.8
      },
      {
        filename = "__base__/sound/walking/dirt-04.ogg",
        volume = 0.8
      }
    },
    map_color={r=248, g=248, b=255},
    ageing=0.00045,
    vehicle_friction_modifier = snow_vehicle_speed_modifier
  },
}
)
