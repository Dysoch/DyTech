data:extend(
{
  {
    type = "armor",
    name = "power-armor-mk3",
    icon = "__DyTech-Graphics__/graphics/icons/power-armor-mk3.png",
    flags = {"goes-to-main-inventory"},
    resistances = 
    {
      {
        type = "physical",
        decrease = 10,
        percent = 60
      },
      {
        type = "acid",
        decrease = 10,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 75
      }
    },
    durability = 30000,
    subgroup = "armor",
    order = "power-armor-mk3",
    stack_size = 1,
    equipment_grid = {width = 15, height = 15}
  }
}
)