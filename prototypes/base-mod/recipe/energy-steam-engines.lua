data:extend(
{
  {
    type = "recipe",
    name = "steam-engine-primary",
    ingredients =
    {
      {"stone-gear-wheel", 5},
      {"pipe", 5},
      {"iron-plate", 5}
    },
    result = "steam-engine-primary"
  },
  {
    type = "recipe",
    name = "steam-engine-terciary",
    ingredients =
    {
      {"stone-gear-wheel", 5},
      {"pipe", 5},
      {"iron-plate", 5}
    },
    result = "steam-engine-terciary"
  },
  {
    type = "recipe",
    name = "advanced-steam-engine-terciary",
    ingredients =
    {
      {"tungsten-gear-wheel", 15},
      {"pipe", 5},
      {"steam-engine-terciary", 1},
      {"bronze-alloy", 25}
    },
    result = "advanced-steam-engine-terciary"
  },
}
)