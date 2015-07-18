data.raw["item"]["battery"].stack_size = 200
data.raw["item"]["basic-accumulator"].subgroup = "dytech-energy-accu-normal"
data.raw["item"]["basic-accumulator"].order = "a[mk1]"

data:extend(
{
  {
    type = "item",
    name = "basic-accumulator-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-accu-normal",
    order = "b[mk2]",
    place_result = "basic-accumulator-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "basic-accumulator-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-accu-normal",
    order = "c[mk3]",
    place_result = "basic-accumulator-mk3",
    stack_size = 50
  },
  {
    type = "item",
    name = "basic-accumulator-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-accu-normal",
    order = "d[mk4]",
    place_result = "basic-accumulator-mk4",
    stack_size = 50
  },
  {
    type = "item",
    name = "basic-accumulator-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-accu-normal",
    order = "e[mk5]",
    place_result = "basic-accumulator-mk5",
    stack_size = 50
  },
  {
    type = "item",
    name = "basic-accumulator-mk6",
    icon = "__MAIN-DyTech-Power__/graphics/accumulators-normal/basic-accumulator6.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-accu-normal",
    order = "f[mk6]",
    place_result = "basic-accumulator-mk6",
    stack_size = 50
  },
}
)