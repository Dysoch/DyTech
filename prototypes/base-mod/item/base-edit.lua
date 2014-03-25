data:extend(
{
  {
    type = "item",
    name = "copper-plate",
    icon = "__base__/graphics/icons/copper-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "copper-plate",
    stack_size = 256
  },
  {
    type = "item",
    name = "iron-plate",
    icon = "__base__/graphics/icons/iron-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "iron-plate",
    stack_size = 256
  },
  {
    type = "item",
    name = "steel-plate",
    icon = "__base__/graphics/icons/steel-plate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "steel-plate",
    stack_size = 256
  },
  {
    type = "item",
    name = "copper-ore",
    icon = "__base__/graphics/icons/copper-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "copper-ore",
    stack_size = 256
  },
  {
    type = "item",
    name = "iron-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "iron-ore",
    stack_size = 256
  },
  {
    type = "item",
    name = "coal",
    icon = "__base__/graphics/icons/coal.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "8MJ",
    subgroup = "raw-material",
    order = "coal",
    stack_size = 128
  },
  {
    type = "item",
    name = "stone",
    icon = "__base__/graphics/icons/stone.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "stone",
    stack_size = 128
  },
  {
    type = "item",
    name = "basic-mining-drill",
    icon = "__DyTech-Graphics__/graphics/icons/basic-mining-drill1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b-m-d",
    place_result = "basic-mining-drill",
    stack_size = 64
  },
  {
    type = "item",
    name = "basic-laser-defense-equipment",
    icon = "__DyTech-Graphics__/graphics/icons/basic-laser-defense-equipment-1.png",
    placed_as_equipment_result = "basic-laser-defense-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "b-l-d-e-1",
    stack_size = 16
  },
  {
    type = "item",
    name = "logistic-robot",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-robot-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "l-r-1",
    place_result = "logistic-robot",
    stack_size = 32
  },
  {
    type = "item",
    name = "logistic-chest-passive-provider",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-passive-provider-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "l-c-p-1",
    place_result = "logistic-chest-passive-provider",
    stack_size = 64
  },
  {
    type = "item",
    name = "logistic-chest-storage",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-storage-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "l-c-s-1",
    place_result = "logistic-chest-storage",
    stack_size = 64
  },
  {
    type = "item",
    name = "logistic-chest-requester",
    icon = "__DyTech-Graphics__/graphics/icons/logistic-chest-requester-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "l-c-r-1",
    place_result = "logistic-chest-requester",
    stack_size = 64
  },
  {
    type = "module",
    name = "speed-module",
    icon = "__DyTech-Graphics__/graphics/icons/speed-module.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-1",
    stack_size = 64,
    effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.1}}
  },
  {
    type = "module",
    name = "speed-module-2",
    icon = "__DyTech-Graphics__/graphics/icons/speed-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-2",
    stack_size = 64,
    effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.2}}
  },
  {
    type = "module",
    name = "speed-module-3",
    icon = "__DyTech-Graphics__/graphics/icons/speed-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-3",
    stack_size = 64,
    effect = { speed = {bonus = 0.6}, consumption = {bonus = 0.3}}
  },
  {
    type = "module",
    name = "effectivity-module",
    icon = "__DyTech-Graphics__/graphics/icons/effectivity-module.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-1",
    stack_size = 64,
    effect = { consumption = {bonus = -0.25}}
  },
  {
    type = "module",
    name = "effectivity-module-2",
    icon = "__DyTech-Graphics__/graphics/icons/effectivity-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-2",
    stack_size = 64,
    effect = { consumption = {bonus = -0.5}}
  },
  {
    type = "module",
    name = "effectivity-module-3",
    icon = "__DyTech-Graphics__/graphics/icons/effectivity-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-3",
    stack_size = 64,
    effect = { consumption = {bonus = -0.75}}
  },
  {
    type = "module",
    name = "productivity-module",
    icon = "__DyTech-Graphics__/graphics/icons/productivity-module.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-1",
    stack_size = 64,
    effect = { productivity = {bonus = 0.05}, consumption = {bonus = 0.2}, pollution = {bonus = 0.2}}
  },
  {
    type = "module",
    name = "productivity-module-2",
    icon = "__DyTech-Graphics__/graphics/icons/productivity-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-2",
    stack_size = 64,
    effect = { productivity = {bonus = 0.1}, consumption = {bonus = 0.4}, pollution = {bonus = 0.4}}
  },
  {
    type = "module",
    name = "productivity-module-3",
    icon = "__DyTech-Graphics__/graphics/icons/productivity-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-3",
    stack_size = 64,
    effect = { productivity = {bonus = 0.15}, consumption = {bonus = 0.6}, pollution = {bonus = 0.6}}
  },
  {
    type = "item",
    name = "laser-turret",
    icon = "__DyTech-Graphics__/graphics/icons/laser-ruby-1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "l-t-1",
    place_result = "laser-turret",
    stack_size = 64
  },
  {
    type = "item",
    name = "steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "s-e-2",
    place_result = "steam-engine",
    stack_size = 8
  },
  {
    type = "item",
    name = "solar-panel",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "s-p-1",
    place_result = "solar-panel",
    stack_size = 32
  },
  {
    type = "item",
    name = "basic-accumulator",
    icon = "__base__/graphics/icons/basic-accumulator.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "b-a-3",
    place_result = "basic-accumulator",
    stack_size = 32
  },
}
)