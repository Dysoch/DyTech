data:extend(
{
  {
    type = "recipe",
    name = "obsidian-wall",
	enabled = false,
    energy_required = 4.5,
    ingredients =
    {
      {"obsidian", 25},
    },
    result = "obsidian-wall"
  },
  {
    type = "recipe",
    name = "brick-wall",
	enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {"brick", 5},
	  {"stone", 2},
    },
    result = "brick-wall"
  },
  {
    type = "recipe",
    name = "iron-wall",
	enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {"stone-wall", 1},
      {"iron-plate", 10},
    },
    result = "iron-wall"
  },
  {
    type = "recipe",
    name = "copper-wall",
	enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {"stone-wall", 1},
      {"copper-plate", 10},
    },
    result = "copper-wall"
  },
  {
    type = "recipe",
    name = "steel-wall",
	enabled = false,
    energy_required = 2.5,
    ingredients =
    {
      {"stone-wall", 1},
      {"steel-plate", 10},
    },
    result = "tungsten-wall"
  },
}
)