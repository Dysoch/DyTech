data:extend(
{ 
  {
    type = "recipe",
    name = "frame1",
    enabled = true,
    ingredients =
    {
      {"iron-plate", 45},
	  {"iron-stick", 30},
	  {"electronic-circuit", 15}
    },
    result = "frame1"
  },
  {
    type = "recipe",
    name = "frame2",
    enabled = false,
    ingredients =
    {
      {"frame1", 1},
      {"steel-plate", 10},
	  {"advanced-circuit", 5},
    },
    result = "frame2"
  },
  {
    type = "recipe",
    name = "frame3",
    enabled = false,
    ingredients =
    {
      {"frame2", 1},
	  {"advanced-circuit", 15},
      {"processing-unit", 18},
	  {"copper-cable", 20}
    },
    result = "frame3"
  },
  {
    type = "recipe",
    name = "frame4",
    enabled = false,
    ingredients =
    {
      {"frame3", 1},
	  {"advanced-processing-unit", 10},
      {"steel-plate", 25},
	  {"bundled-wire", 50}
    },
    result = "frame4"
  },
  {
    type = "recipe",
    name = "item-exit1",
    enabled = true,
    ingredients =
    {
      {"rubber", 5},
	  {"wooden-chest", 1},
	  {"iron-plate", 12}
    },
    result = "item-exit1"
  },
  {
    type = "recipe",
    name = "item-exit2",
    enabled = false,
    ingredients =
    {
      {"item-exit1", 1},
	  {"rubber", 25},
      {"iron-chest", 1},
	  {"steel-plate", 12}
    },
    result = "item-exit2"
  },
  {
    type = "recipe",
    name = "item-exit3",
    enabled = false,
    ingredients =
    {
      {"item-exit2", 1},
	  {"steel-chest", 1},
      {"bundled-wire", 10},
	  {"steel-plate", 15}
    },
    result = "item-exit3"
  },
  {
    type = "recipe",
    name = "item-exit4",
    enabled = false,
    ingredients =
    {
      {"item-exit3", 1},
	  {"advanced-processing-unit", 5},
      {"smart-chest", 1},
	  {"smart-inserter", 1}
    },
    result = "item-exit4"
  },
  {
    type = "recipe",
    name = "rotor1",
    enabled = true,
    ingredients =
    {
      {"blade1", 3},
      {"stone-gear-wheel", 4},
	  {"iron-plate", 8},
	  {"copper-plate", 2}
    },
    result = "rotor1"
  },
  {
    type = "recipe",
    name = "rotor2",
    enabled = false,
    ingredients =
    {
      {"rotor1", 1},
	  {"blade2", 3},
      {"iron-gear-wheel", 4},
	  {"iron-plate", 6}
    },
    result = "rotor2"
  },
  {
    type = "recipe",
    name = "rotor3",
    enabled = false,
    ingredients =
    {
      {"rotor2", 1},
      {"blade3", 3},
	  {"steel-gear-wheel", 4},
	  {"steel-plate", 12}
    },
    result = "rotor3"
  },
  {
    type = "recipe",
    name = "rotor4",
    enabled = false,
    ingredients =
    {
      {"rotor3", 1},
	  {"blade3", 9},
      {"steel-gear-wheel", 12},
	  {"advanced-circuit", 5}
    },
    result = "rotor4"
  },
  {
    type = "recipe",
    name = "blade1",
    enabled = true,
    ingredients =
    {
      {"stone", 4},
      {"wood", 1},
	  {"iron-stick", 1}
    },
    result = "blade1"
  },
  {
    type = "recipe",
    name = "blade2",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 12},
      {"stone-brick", 12},
    },
    result = "blade2"
  },
  {
    type = "recipe",
    name = "blade3",
    enabled = false,
    ingredients =
    {
      {"blade2", 1},
      {"steel-plate", 4},
    },
    result = "blade3"
  },
}
)