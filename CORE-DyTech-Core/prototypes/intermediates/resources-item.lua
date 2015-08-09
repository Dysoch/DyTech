data:extend(
{
  {
    type = "item",
    name = "sand",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/sand.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-raw",
    order = "sand",
    stack_size = 5000,
    place_as_tile =
    {
      result = "sand",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
  {
    type = "item",
    name = "sandbag",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/sandbag.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-processed",
    order = "sandbag",
    stack_size = 500,
    place_as_tile =
    {
      result = "sandbag",
      condition_size = 4,
      condition = { "water-tile" }
    }
  },
  {
    type = "item",
    name = "glass",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/glass.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-processed",
    order = "glass",
    stack_size = 100
  },
  {
    type = "item",
    name = "obsidian",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/obsidian.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-raw",
    order = "obsidian",
    stack_size = 200
  },
  {
    type = "item",
    name = "bone",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/bone.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-raw",
    order = "bone",
    stack_size = 200
  },
  {
    type = "item",
    name = "bone-charcoal",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/bone-charcoal.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-processed",
    order = "bone-charcoal",
    fuel_value = "3.5MJ",
    stack_size = 100
  },
  {
    type = "item",
    name = "chitin",
    icon = "__CORE-DyTech-Core__/graphics/intermediates/chitin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "dytech-intermediates-raw",
    order = "chitin",
    stack_size = 200
  },
}
)