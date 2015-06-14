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
      {"steel-gear-wheel", 10},
      {"advanced-circuit", 10},
      {"frame-2", 1}
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
      {"lead-gear-wheel", 10},
      {"processing-unit", 10},
      {"frame-3", 1}
    },
    result = "oil-refinery-2",
  },
}
)