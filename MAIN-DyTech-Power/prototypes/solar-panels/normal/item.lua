data.raw["item"]["solar-panel"].subgroup = "dytech-energy-solar-normal"
data.raw["item"]["solar-panel"].order = "a[mk1]-a[primary]"

data:extend(
{
  {
    type = "item",
    name = "solar-panel-secondary",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "a[mk1]-b[secondary]",
    place_result = "solar-panel-secondary",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-primary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "b[mk2]-b[primary]",
    place_result = "solar-panel-primary-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-secondary-mk2",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "b[mk2]-b[secondary]",
    place_result = "solar-panel-secondary-mk2",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-primary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "c[mk3]-b[primary]",
    place_result = "solar-panel-primary-mk3",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-secondary-mk3",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "c[mk3]-b[secondary]",
    place_result = "solar-panel-secondary-mk3",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-primary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "d[mk4]-b[primary]",
    place_result = "solar-panel-primary-mk4",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-secondary-mk4",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "d[mk4]-b[secondary]",
    place_result = "solar-panel-secondary-mk4",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-primary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "e[mk5]-b[primary]",
    place_result = "solar-panel-primary-mk5",
    stack_size = 50
  },
  {
    type = "item",
    name = "solar-panel-secondary-mk5",
    icon = "__MAIN-DyTech-Power__/graphics/solar-panels/normal/icons/solar-panel5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "dytech-energy-solar-normal",
    order = "e[mk5]-b[secondary]",
    place_result = "solar-panel-secondary-mk5",
    stack_size = 50
  },
}
)