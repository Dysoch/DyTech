data:extend(
{ 
  {
    type = "recipe",
    name = "basic-grenade-2",
    enabled = false, --temporary
    energy_required = 11,
    ingredients =
    {
      {"basic-grenade", 1},
      {"steel-plate", 2},
      {"explosives", 1},
    },
    result = "basic-grenade-2"
  },
  {
    type = "recipe",
    name = "basic-grenade-3",
    enabled = false, --temporary
    energy_required = 11,
    ingredients =
    {
      {"basic-grenade-2", 1},
      {"tin-plate", 2},
      {"explosives", 2},
    },
    result = "basic-grenade-3"
  },
}
)