data.raw["recipe"]["iron-gear-wheel"].enabled = false
for k, v in pairs(data.raw["recipe"]["lab"].ingredients) do
	if v[1] == "iron-gear-wheel" then table.remove(data.raw["recipe"]["lab"].ingredients, k) end
end
table.insert(data.raw["recipe"]["lab"].ingredients,{"stone-gear-wheel", 5})
table.insert(data.raw["technology"]["automation"].effects,{type = "unlock-recipe",recipe = "iron-gear-wheel"})


data:extend(
{ 
  {
    type = "recipe",
    name = "stone-gear-wheel",
    ingredients =
    {
      {"stone", 1},
    },
    result = "stone-gear-wheel"
  },
  {
    type = "recipe",
    name = "steel-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1},
    },
    result = "steel-gear-wheel"
  },
  {
    type = "recipe",
    name = "tin-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"tin-plate", 1},
    },
    result = "tin-gear-wheel"
  },
  {
    type = "recipe",
    name = "zinc-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"zinc-plate", 1},
    },
    result = "zinc-gear-wheel"
  },
  {
    type = "recipe",
    name = "lead-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"lead-plate", 1},
    },
    result = "lead-gear-wheel"
  },
  {
    type = "recipe",
    name = "cobalt-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"cobalt-plate", 1},
    },
    result = "cobalt-gear-wheel"
  },
  {
    type = "recipe",
    name = "tungsten-gear-wheel",
    enabled = false,
    ingredients =
    {
      {"tungsten-plate", 1},
    },
    result = "tungsten-gear-wheel"
  },
}
)