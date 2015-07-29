require "prototypes.internal-config"

data.raw["armor"]["basic-modular-armor"].resistances = Resistances.Tier5
data.raw["armor"]["basic-modular-armor"].durability = ModularArmor.Dura1
data.raw["armor"]["basic-modular-armor"].equipment_grid = ModularArmor.GridTier1
data.raw["armor"]["power-armor"].resistances = Resistances.Tier6
data.raw["armor"]["power-armor"].durability = ModularArmor.Dura2
data.raw["armor"]["power-armor"].equipment_grid = ModularArmor.GridTier2
data.raw["armor"]["power-armor-mk2"].resistances = Resistances.Tier7
data.raw["armor"]["power-armor-mk2"].durability = ModularArmor.Dura3
data.raw["armor"]["power-armor-mk2"].equipment_grid = ModularArmor.GridTier3

data:extend(
{
  {
    type = "armor",
    name = "power-armor-mk3",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    flags = {"goes-to-main-inventory"},
    resistances = Resistances.Tier8,
    durability = ModularArmor.Dura4,
    subgroup = "dytech-combat-armor",
    order = "06",
    stack_size = 1,
    equipment_grid = ModularArmor.GridTier4
  },
  {
    type = "armor",
    name = "power-armor-mk4",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    flags = {"goes-to-main-inventory"},
    resistances = Resistances.Tier9,
    durability = ModularArmor.Dura5,
    subgroup = "dytech-combat-armor",
    order = "07",
    stack_size = 1,
    equipment_grid = ModularArmor.GridTier5
  },
  {
    type = "armor",
    name = "power-armor-mk5",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    flags = {"goes-to-main-inventory"},
    resistances = Resistances.Tier10,
    durability = ModularArmor.Dura6,
    subgroup = "dytech-combat-armor",
    order = "08",
    stack_size = 1,
    equipment_grid = ModularArmor.GridTier6
  },
  {
    type = "armor",
    name = "power-armor-mk6",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    flags = {"goes-to-main-inventory"},
    resistances = Resistances.Tier10,
    durability = ModularArmor.Dura7,
    subgroup = "dytech-combat-armor",
    order = "09",
    stack_size = 1,
    equipment_grid = ModularArmor.GridTier7
  },
  {
    type = "armor",
    name = "power-armor-mk7",
    icon = "__MAIN-DyTech-War__/graphics/armor/power-armor-mk3.png",
    flags = {"goes-to-main-inventory"},
    resistances = Resistances.Tier10,
    durability = ModularArmor.Dura8,
    subgroup = "dytech-combat-armor",
    order = "10",
    stack_size = 1,
    equipment_grid = ModularArmor.GridTier8
  },
}
)