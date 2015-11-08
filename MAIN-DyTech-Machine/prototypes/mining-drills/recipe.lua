data:extend(
{ 
  {
    type = "recipe",
    name = "basic-mining-drill-mk2",
	enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"basic-mining-drill", 1},
      {"rotor", 2},
	  {"item-exit", 1},
      {"frame", 1}
    },
    result = "basic-mining-drill-mk2"
  },
  {
    type = "recipe",
    name = "basic-mining-drill-mk3",
	enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"basic-mining-drill-mk2", 1},
      {"rotor", 2},
	  {"item-exit", 1},
      {"frame", 1}
    },
    result = "basic-mining-drill-mk3"
  },
  {
    type = "recipe",
    name = "basic-mining-drill-mk4",
	enabled = false,
    energy_required = 25,
    ingredients =
    {
      {"basic-mining-drill-mk3", 1},
      {"rotor", 2},
	  {"item-exit", 2},
      {"frame", 1}
    },
    result = "basic-mining-drill-mk4"
  },
  {
    type = "recipe",
    name = "basic-mining-drill-mk5",
	enabled = false,
    energy_required = 35,
    ingredients =
    {
      {"basic-mining-drill-mk4", 1},
      {"rotor", 2},
	  {"item-exit", 4},
      {"frame", 1}
    },
    result = "basic-mining-drill-mk5"
  },
  {
    type = "recipe",
    name = "basic-mining-drill-mk6",
	enabled = false,
    energy_required = 45,
    ingredients =
    {
      {"basic-mining-drill-mk5", 1},
	  {"logic-diamond-processor", 250},
      {"tungsten-plate", 300},
      {"ardite-plate", 100},
      {"cobalt-plate", 100},
    },
    result = "basic-mining-drill-mk6"
  },
}
)