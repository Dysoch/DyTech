data:extend(
{ 
  {
    type = "recipe",
    name = "frame-1",
    enabled = true,
    ingredients =
    {
      {"iron-plate", 25},
	  {"iron-stick", 30},
	  {"electronic-circuit", 15}
    },
    result = "frame-1"
  },
  {
    type = "recipe",
    name = "frame-2",
    enabled = false,
    ingredients =
    {
      {"frame-1", 1},
      {"steel-plate", 10},
	  {"advanced-circuit", 5},
    },
    result = "frame-2"
  },
  {
    type = "recipe",
    name = "frame-3",
    enabled = false,
    ingredients =
    {
      {"frame-2", 1},
      {"lead-plate", 25},
      {"processing-unit", 18},
	  {"copper-cable", 20}
    },
    result = "frame-3"
  },
  {
    type = "recipe",
    name = "frame-4",
    enabled = false,
    ingredients =
    {
      {"frame-3", 1},
	  {"advanced-processing-unit", 10},
      {"tungsten-plate", 25},
	  {"bundled-wire", 50}
    },
    result = "frame-4"
  },
  {
    type = "recipe",
    name = "item-exit-1",
    enabled = true,
    ingredients =
    {
      {"rubber", 5},
	  {"wooden-chest", 1},
	  {"iron-plate", 12}
    },
    result = "item-exit-1"
  },
  {
    type = "recipe",
    name = "item-exit-2",
    enabled = false,
    ingredients =
    {
      {"item-exit-1", 1},
	  {"rubber", 25},
      {"iron-chest", 1},
	  {"steel-plate", 12}
    },
    result = "item-exit-2"
  },
  {
    type = "recipe",
    name = "item-exit-3",
    enabled = false,
    ingredients =
    {
      {"item-exit-2", 1},
	  {"steel-chest", 1},
      {"bundled-wire", 10},
	  {"zinc-plate", 15}
    },
    result = "item-exit-3"
  },
  {
    type = "recipe",
    name = "item-exit-4",
    enabled = false,
    ingredients =
    {
      {"item-exit-3", 1},
	  {"advanced-processing-unit", 5},
      {"smart-chest", 1},
	  {"smart-inserter", 1}
    },
    result = "item-exit-4"
  },
  {
    type = "recipe",
    name = "rotor-1",
    enabled = true,
    ingredients =
    {
      {"blade-1", 3},
      {"stone-gear-wheel", 4},
	  {"iron-plate", 8},
	  {"copper-plate", 2}
    },
    result = "rotor-1"
  },
  {
    type = "recipe",
    name = "rotor-2",
    enabled = false,
    ingredients =
    {
      {"rotor-1", 1},
	  {"blade-2", 3},
      {"iron-gear-wheel", 4},
	  {"steel-plate", 6}
    },
    result = "rotor-2"
  },
  {
    type = "recipe",
    name = "rotor-3",
    enabled = false,
    ingredients =
    {
      {"rotor-2", 1},
      {"blade-3", 3},
	  {"steel-gear-wheel", 4},
	  {"lead-plate", 12}
    },
    result = "rotor-3"
  },
  {
    type = "recipe",
    name = "rotor-4",
    enabled = false,
    ingredients =
    {
      {"rotor-3", 1},
	  {"blade-3", 9},
      {"lead-gear-wheel", 12},
	  {"advanced-circuit", 5}
    },
    result = "rotor-4"
  },
  {
    type = "recipe",
    name = "blade-1",
    enabled = true,
    ingredients =
    {
      {"stone", 4},
      {"wood", 1},
	  {"iron-stick", 1}
    },
    result = "blade-1"
  },
  {
    type = "recipe",
    name = "blade-2",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 6},
      {"stone-brick", 6},
    },
    result = "blade-2"
  },
  {
    type = "recipe",
    name = "blade-3",
    enabled = false,
    ingredients =
    {
      {"blade-2", 1},
      {"steel-plate", 4},
    },
    result = "blade-3"
  },
}
)