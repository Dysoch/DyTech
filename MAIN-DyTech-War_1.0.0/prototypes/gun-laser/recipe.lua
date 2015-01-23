data:extend(
{ 
  {
    type = "recipe",
    name = "laser-gun",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
	  {"steel-plate", 45},
	  {"zinc-plate", 45},
      {"electronic-circuit", 12},
      {"advanced-circuit", 15},
      {"glass", 2},
    },
    result = "laser-gun"
  },
  {
    type = "recipe",
    name = "laser-shotgun",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
	  {"laser-gun", 1},
	  {"cobalt-plate", 45},
      {"advanced-circuit", 15},
      {"glass", 22},
    },
    result = "laser-shotgun"
  },
}
)