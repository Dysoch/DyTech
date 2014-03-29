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
      {"rotor1", 2},
	  {"engine1", 1},
	  {"item-exit1", 1},
      {"frame1", 1}
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
      {"rotor2", 2},
	  {"engine2", 1},
	  {"item-exit2", 1},
      {"frame2", 1}
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
      {"rotor3", 2},
	  {"engine2", 2},
	  {"item-exit3", 2},
      {"frame3", 1}
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
      {"rotor4", 2},
	  {"engine3", 4},
	  {"item-exit4", 4},
      {"frame4", 1}
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
      {"basic-mining-drill-mk5", 3},
	  {"circuit3", 250},
      {"tungsten-plate", 100},
	  {"copper-tungsten-alloy", 150},
      {"brass-alloy", 150}
    },
    result = "basic-mining-drill-mk6"
  },
  {
    type = "recipe",
    name = "basic-mining-drill-sand",
	enabled = false,
    energy_required = 45,
    ingredients =
    {
      {"stone-gear-wheel", 25},
	  {"sand", 250},
      {"iron-plate", 10},
    },
    result = "basic-mining-drill-sand"
  },
  {
    type = "recipe",
    name = "basic-mining-drill-gem",
    enabled = false,
    energy_required = 45,
    ingredients =
      {
        {"tungsten-gear-wheel", 25},
        {"brass-alloy", 20},
        {"steel-plate", 50},
      },
    result = "basic-mining-drill-gem"
   },
}
)