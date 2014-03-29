data:extend(
{ 
  {
    type = "recipe",
    name = "steel-axe2",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 15},
      {"iron-stick", 5},
	  {"steel-axe", 1}
    },
    result = "steel-axe2"
  },
  {
    type = "recipe",
    name = "steel-axe3",
    enabled = false,
    ingredients =
    {
      {"tungsten-plate", 25},
      {"iron-stick", 5},
	  {"steel-axe2", 1},
	  {"ruby-3", 2}
    },
    result = "steel-axe3"
  },
  {
    type = "recipe",
    name = "wooden-axe",
    ingredients =
    {
      {"wood", 4},
    },
    result = "wooden-axe"
  },
}
)