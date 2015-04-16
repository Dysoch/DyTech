data.raw["item"]["boiler"].subgroup = "boiler"

data:extend(
{
  {
    type = "item",
    name = "boiler-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "boiler",
    order = "b[steam-power]-b[boiler]",
    place_result = "boiler-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "boiler-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "boiler",
    order = "b[steam-power]-c[boiler]",
    place_result = "boiler-mk3",
    stack_size = 50
  },
  {
    type = "item",
    name = "boiler-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "boiler",
    order = "b[steam-power]-d[boiler]",
    place_result = "boiler-mk4",
    stack_size = 50
  },
  {
    type = "item",
    name = "boiler-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "boiler",
    order = "b[steam-power]-e[boiler]",
    place_result = "boiler-mk5",
    stack_size = 50
  },
}
)