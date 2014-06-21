data:extend(
{ 
  {
    type = "recipe",
    name = "wooden-axe",
    ingredients =
    {
      {"wood", 4},
    },
    result = "wooden-axe"
  },
  {
    type = "recipe",
    name = "stone-axe",
    ingredients =
    {
      {"stone", 4},
      {"wood", 2},
    },
    result = "stone-axe",
    enabled = false
  },
  {
    type = "recipe",
    name = "copper-axe",
    ingredients =
    {
      {"copper-plate", 3},
      {"iron-stick", 2},
    },
    result = "wooden-axe",
    enabled = false
  },
  {
    type = "recipe",
    name = "advanced-steel-axe",
    ingredients =
    {
      {"iron-plate", 3},
      {"copper-plate", 3},
      {"steel-plate", 15},
      {"iron-stick", 2},
    },
    result = "advanced-steel-axe",
    enabled = false
  },
}
)