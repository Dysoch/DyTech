data:extend(
{ 
  {
    type = "recipe",
    name = "small-lamp-1",
    enabled = false,
    ingredients =
    {
      {"small-lamp", 1},
      {"advanced-circuit", 1},
      {"steel-plate", 1}
    },
    result = "small-lamp-1"
  },
  {
    type = "recipe",
    name = "small-lamp-2",
    enabled = false,
    ingredients =
    {
      {"small-lamp-1", 1},
      {"advanced-circuit", 2},
      {"tungsten-plate", 1}
    },
    result = "small-lamp-2"
  },
}
)