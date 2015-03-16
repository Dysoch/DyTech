data:extend(
{
  {
    type = "solar-panel",
    name = "nuclear-reactor",
    icon = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/icons/nuclear-reactor.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 2, mining_time = 4, result = "nuclear-reactor"},
    max_health = 1000,
    corpse = "big-remnants",
    collision_box = {{-2.8, -2.8}, {2.8, 2.8}},
    selection_box = {{-3, -3}, {3, 3}},
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    picture =
    {
      filename = "__MAIN-DyTech-Power__/graphics/nuclear-reactor/entity/nuclear-reactor.png",
      priority = "high",
      width = 208,
      height = 192
    },
    production = "10MW"
  }
}
)