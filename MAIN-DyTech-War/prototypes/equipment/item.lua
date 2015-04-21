data.raw["item"]["basic-laser-defense-equipment"].icon = "__MAIN-DyTech-War__/graphics/equipment/icon/basic-laser-defense-equipment-1.png"

data:extend(
{
  {
    type = "item",
    name = "basic-laser-defense-equipment-2",
    icon = "__MAIN-DyTech-War__/graphics/equipment/icon/basic-laser-defense-equipment-2.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment]",
    stack_size = 16
  },
  {
    type = "item",
    name = "basic-laser-defense-equipment-3",
    icon = "__MAIN-DyTech-War__/graphics/equipment/icon/basic-laser-defense-equipment-3.png",
    placed_as_equipment_result = "basic-laser-defense-equipment-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-combat-equipment",
    order = "d[active-defense]-a[basic-laser-defense-equipment]",
    stack_size = 16
  },
}
)
