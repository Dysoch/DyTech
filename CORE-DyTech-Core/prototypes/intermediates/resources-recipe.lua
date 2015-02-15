data:extend(
{ 
  {
    type = "recipe",
    name = "sandbag",
    ingredients =
    {
      {"sand", 20},
    },
    result = "sandbag"
  },
  {
    type = "recipe",
    name = "glass",
    category = "smelting",
    energy_required = 3.5,
    ingredients = {{ "sand", 5}},
    result = "glass"
  },
}
)