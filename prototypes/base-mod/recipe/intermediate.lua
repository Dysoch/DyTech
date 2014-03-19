data:extend(
{ 
  {
    type = "recipe",
    name = "frame1",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 15},
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
	  {"copper-plate", 15}
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
      {"steel-plate", 18},
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
	  {"circuit3", 10},
      {"steel-plate", 25},
	  {"bundledwire", 50}
    },
    result = "frame4"
  },
  {
    type = "recipe",
    name = "item-exit1",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1},
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
      {"bundledwire", 10},
	  {"copper-plate", 15}
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
	  {"circuit3", 5},
      {"smart-chest", 1},
	  {"smart-inserter", 1}
    },
    result = "item-exit4"
  },
  {
    type = "recipe",
    name = "engine1",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 5},
	  {"steel-plate", 4},
      {"stone-brick", 2},
	  {"electronic-circuit", 5}
    },
    result = "engine1"
  },
  {
    type = "recipe",
    name = "engine2",
    enabled = false,
    ingredients =
    {
      {"engine1", 2},
	  {"bundledwire", 12},
      {"steel-plate", 6},
	  {"advanced-circuit", 2}
    },
    result = "engine2"
  },
  {
    type = "recipe",
    name = "engine3",
    enabled = false,
    ingredients =
    {
      {"engine2", 2},
	  {"advanced-circuit", 15},
	  {"steel-plate", 2}
    },
    result = "engine3"
  },
  {
    type = "recipe",
    name = "engine4",
    enabled = false,
    ingredients =
    {
      {"coal", 12},
      {"rotor2", 2},
	  {"iron-gear-wheel", 4}
    },
    result = "engine4"
  },
  {
    type = "recipe",
    name = "engine5",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 25},
	  {"steel-gear-wheel", 5},
      {"iron-stick", 12},
	  {"copper-plate", 14}
    },
    result = "engine5"
  },
  {
    type = "recipe",
    name = "rotor1",
    enabled = false,
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
	  {"copper-plate", 12}
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
    enabled = false,
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
      {"iron-stick", 4},
      {"iron-plate", 12},
	  {"wood", 2}
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
	  {"copper-plate", 4}
    },
    result = "blade3"
  },
  {
    type = "recipe",
    name = "circuit3",
    enabled = false,
    ingredients =
    {
      {"advanced-circuit", 5},
      {"electronic-circuit", 2},
	  {"bundledwire", 5}
    },
    result = "circuit3"
  },
  {
    type = "recipe",
    name = "bundledwire",
    enabled = false,
    ingredients =
    {
      {"red-wire", 1},
      {"green-wire", 1},
	  {"copper-cable", 1},
	  {"rubber", 2}
    },
    result = "bundledwire",
	result_count = 3
  },
  {
    type = "recipe",
    name = "wheel",
    enabled = false,
    ingredients =
    {
      {"rubber", 5},
      {"steel-plate", 2},
	  {"iron-plate", 4},
	  {"copper-plate", 1}
    },
    result = "wheel"
  },
  {
    type = "recipe",
    name = "dytech-alien-artifact",
    ingredients =
    {
      {"biter-queen-egg", 1},
    },
    result = "alien-artifact",
	result_count = 50
  },
}
)