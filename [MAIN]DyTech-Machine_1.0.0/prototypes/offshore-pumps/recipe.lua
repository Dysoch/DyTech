data:extend(
{ 
  {
    type = "recipe",
    name = "offshore-pump-mk2",
	enabled = false,
    ingredients =
    {
      {"offshore-pump", 1},
      {"iron-gear-wheel", 1},
    },
    result = "offshore-pump-mk2"
  },
  {
    type = "recipe",
    name = "offshore-pump-mk3",
	enabled = false,
    ingredients =
    {
      {"offshore-pump-mk2", 1},
      {"steel-gear-wheel", 4},
    },
    result = "offshore-pump-mk3"
  },
  {
    type = "recipe",
    name = "offshore-pump-mk4",
	enabled = false,
    ingredients =
    {
      {"offshore-pump-mk3", 1},
      {"lead-gear-wheel", 1},
    },
    result = "offshore-pump-mk4"
  },
  {
    type = "recipe",
    name = "offshore-pump-mk5",
	enabled = false,
    ingredients =
    {
      {"offshore-pump-mk4", 1},
      {"tungsten-gear-wheel", 4},
    },
    result = "offshore-pump-mk5"
  },
}
)