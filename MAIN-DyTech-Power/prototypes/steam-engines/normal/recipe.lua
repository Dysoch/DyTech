data:extend(
{
  {
    type = "recipe",
    name = "steam-engine-secondary-mk2",
	enabled = false,
    ingredients =
    {
      {"steam-engine", 1},
      {"flux-capacitor", 2},
      {"frame", 1},
      {"rotor", 4},
      {"electronic-circuit", 5}
    },
    result = "steam-engine-secondary-mk2"
  },
  {
    type = "recipe",
    name = "steam-engine-secondary-mk3",
	enabled = false,
    ingredients =
    {
      {"steam-engine-secondary-mk2", 1},
      {"flux-capacitor", 2},
      {"frame", 1},
      {"rotor", 4},
      {"advanced-circuit", 5}
    },
    result = "steam-engine-secondary-mk3"
  },
  {
    type = "recipe",
    name = "steam-engine-secondary-mk4",
	enabled = false,
    ingredients =
    {
      {"steam-engine-secondary-mk3", 1},
      {"flux-capacitor", 5},
      {"frame", 1},
      {"rotor", 4},
      {"processing-unit", 5}
    },
    result = "steam-engine-secondary-mk4"
  },
  {
    type = "recipe",
    name = "steam-engine-secondary-mk5",
	enabled = false,
    ingredients =
    {
      {"steam-engine-secondary-mk4", 1},
      {"flux-capacitor", 10},
      {"frame", 1},
      {"rotor", 4},
      {"processing-unit", 5}
    },
    result = "steam-engine-secondary-mk5"
  },
}
)