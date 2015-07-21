data:extend(
{
  {
    type = "recipe",
    name = "small-basic-accumulator",
    enabled = false,
    ingredients =
    {
      {"battery", 5},
      {"electronic-circuit", 5},
      {"flux-capacitor-1", 5},
      {"frame-1", 1},
    },
    result = "small-basic-accumulator"
  },
  {
    type = "recipe",
    name = "small-basic-accumulator-mk2",
    enabled = false,
    ingredients =
    {
	  {"small-basic-accumulator", 5},
      {"battery", 5},
      {"electronic-circuit", 5},
      {"flux-capacitor-2", 5},
      {"frame-1", 1},
    },
    result = "small-basic-accumulator-mk2"
  },
  {
    type = "recipe",
    name = "small-basic-accumulator-mk3",
    enabled = false,
    ingredients =
    {
      {"small-basic-accumulator", 5},
      {"battery", 5},
      {"advanced-circuit", 5},
      {"flux-capacitor-2", 5},
      {"frame-1", 1},
    },
    result = "small-basic-accumulator-mk3"
  },
  {
    type = "recipe",
    name = "small-basic-accumulator-mk4",
    enabled = false,
    ingredients =
    {
      {"small-basic-accumulator-mk2", 5},
      {"battery", 25},
      {"processing-unit", 5},
      {"flux-capacitor-2", 5},
      {"frame-2", 2},
    },
    result = "small-basic-accumulator-mk4"
  },
  {
    type = "recipe",
    name = "small-basic-accumulator-mk5",
    enabled = false,
    ingredients =
    {
      {"small-basic-accumulator-mk3", 5},
      {"battery", 25},
      {"processing-unit", 5},
      {"flux-capacitor-3", 5},
      {"frame-2", 2},
    },
    result = "small-basic-accumulator-mk5"
  },
  {
    type = "recipe",
    name = "small-basic-accumulator-mk6",
    enabled = false,
    ingredients =
    {
      {"small-basic-accumulator-mk5", 5},
      {"battery", 50},
      {"processing-unit", 25},
      {"flux-capacitor-4", 5},
      {"frame-3", 1},
    },
    result = "small-basic-accumulator-mk6"
  },
}
)