data:extend(
{ 
  {
    type = "recipe",
    name = "oil-refinery-1",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"oil-refinery", 1},
      {"iron-gear-wheel", 25},
      {"advanced-circuit", 10},
      {"frame", 1}
    },
    result = "oil-refinery-1",
  },
  {
    type = "recipe",
    name = "oil-refinery-2",
    energy_required = 20,
    enabled = false,
    ingredients =
    {
      {"oil-refinery-1", 1},
      {"iron-gear-wheel", 75},
      {"processing-unit", 10},
      {"frame", 1}
    },
    result = "oil-refinery-2",
  },
}
)