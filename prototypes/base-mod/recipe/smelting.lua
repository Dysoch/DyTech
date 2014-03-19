data:extend(
{
  {
    type = "recipe",
    name = "rubber",
	enabled = false,
    category = "smelting",
    energy_required = 3.5,--old: 100
    ingredients = {{ "rubber-tree-resin", 1}},
    result = "rubber"
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
