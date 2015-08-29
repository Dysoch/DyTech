data:extend(
{
  {
    type = "recipe",
    name = "basic-accumulator-mk2",
    enabled = false,
    ingredients =
    {
      {"basic-accumulator", 1},
      {"battery", 5},
      {"advanced-circuit", 5},
      {"flux-capacitor-1", 5},
      {"frame-2", 1},
    },
    result = "basic-accumulator-mk2"
  },
  {
    type = "recipe",
    name = "basic-accumulator-mk3",
    enabled = false,
    ingredients =
    {
      {"basic-accumulator", 1},
      {"battery", 5},
      {"advanced-circuit", 5},
      {"flux-capacitor-1", 5},
      {"frame-2", 1},
    },
    result = "basic-accumulator-mk3"
  },
  {
    type = "recipe",
    name = "basic-accumulator-mk4",
    enabled = false,
    ingredients =
    {
      {"basic-accumulator-mk2", 1},
      {"battery", 10},
      {"processing-unit", 5},
      {"flux-capacitor-2", 5},
      {"frame-3", 1},
    },
    result = "basic-accumulator-mk4"
  },
  {
    type = "recipe",
    name = "basic-accumulator-mk5",
    enabled = false,
    ingredients =
    {
      {"basic-accumulator-mk3", 1},
      {"battery", 10},
      {"processing-unit", 5},
      {"flux-capacitor-2", 5},
      {"frame-3", 1},
    },
    result = "basic-accumulator-mk5"
  },
  {
    type = "recipe",
    name = "basic-accumulator-mk6",
    enabled = false,
    ingredients =
    {
      {"basic-accumulator-mk4", 1},
      {"basic-accumulator-mk5", 5},
      {"battery", 110},
      {"advanced-processing-unit", 25},
      {"flux-capacitor-4", 5},
      {"frame-4", 1},
    },
    result = "basic-accumulator-mk6"
  },
}
)