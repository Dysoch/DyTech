data.raw["item"]["boiler"].subgroup = "dytech-energy-boiler"
data.raw["item"]["boiler"].order = "a[boiler]-1"

data:extend(
{
  {
    type = "item",
    name = "boiler-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-boiler",
    order = "a[boiler]-2",
    place_result = "boiler-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "boiler-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-boiler",
    order = "a[boiler]-3",
    place_result = "boiler-mk3",
    stack_size = 50
  },
  {
    type = "item",
    name = "boiler-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-boiler",
    order = "a[boiler]-4",
    place_result = "boiler-mk4",
    stack_size = 50
  },
  {
    type = "item",
    name = "boiler-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/boilers/boiler5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-boiler",
    order = "a[boiler]-5",
    place_result = "boiler-mk5",
    stack_size = 50
  },
}
)