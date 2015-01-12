for k, v in pairs(data.raw["recipe"]["speed-module"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["speed-module"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-2"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["speed-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-2"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["speed-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-2"].ingredients) do
	if v[1] == "speed-module" then table.remove(data.raw["recipe"]["speed-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-3"].ingredients) do
	if v[1] == "speed-module-2" then table.remove(data.raw["recipe"]["speed-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-3"].ingredients) do
	if v[1] == "alien-artifact" then table.remove(data.raw["recipe"]["speed-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["speed-module-3"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["speed-module-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["speed-module"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["speed-module"].ingredients,{"copper-plate", 5})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"speed-module", 1})
table.insert(data.raw["recipe"]["speed-module-2"].ingredients,{"electronic-circuit", 5})
table.insert(data.raw["recipe"]["speed-module-3"].ingredients,{"speed-module-2", 1})
table.insert(data.raw["recipe"]["speed-module-3"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["speed-module-3"].ingredients,{"electronic-circuit", 5})
for k, v in pairs(data.raw["recipe"]["effectivity-module"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["effectivity-module"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-2"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["effectivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-2"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["effectivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-2"].ingredients) do
	if v[1] == "effectivity-module" then table.remove(data.raw["recipe"]["effectivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-3"].ingredients) do
	if v[1] == "effectivity-module-2" then table.remove(data.raw["recipe"]["effectivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-3"].ingredients) do
	if v[1] == "alien-artifact" then table.remove(data.raw["recipe"]["effectivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["effectivity-module-3"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["effectivity-module-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["effectivity-module"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module"].ingredients,{"copper-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"effectivity-module", 1})
table.insert(data.raw["recipe"]["effectivity-module-2"].ingredients,{"electronic-circuit", 5})
table.insert(data.raw["recipe"]["effectivity-module-3"].ingredients,{"effectivity-module-2", 1})
table.insert(data.raw["recipe"]["effectivity-module-3"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["effectivity-module-3"].ingredients,{"electronic-circuit", 5})
for k, v in pairs(data.raw["recipe"]["productivity-module"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["productivity-module"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-2"].ingredients) do
	if v[1] == "advanced-circuit" then table.remove(data.raw["recipe"]["productivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-2"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["productivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-2"].ingredients) do
	if v[1] == "productivity-module" then table.remove(data.raw["recipe"]["productivity-module-2"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-3"].ingredients) do
	if v[1] == "productivity-module-2" then table.remove(data.raw["recipe"]["productivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-3"].ingredients) do
	if v[1] == "alien-artifact" then table.remove(data.raw["recipe"]["productivity-module-3"].ingredients, k) end
end
for k, v in pairs(data.raw["recipe"]["productivity-module-3"].ingredients) do
	if v[1] == "processing-unit" then table.remove(data.raw["recipe"]["productivity-module-3"].ingredients, k) end
end
table.insert(data.raw["recipe"]["productivity-module"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["productivity-module"].ingredients,{"copper-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"iron-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"productivity-module", 1})
table.insert(data.raw["recipe"]["productivity-module-2"].ingredients,{"electronic-circuit", 5})
table.insert(data.raw["recipe"]["productivity-module-3"].ingredients,{"productivity-module-2", 1})
table.insert(data.raw["recipe"]["productivity-module-3"].ingredients,{"steel-plate", 5})
table.insert(data.raw["recipe"]["productivity-module-3"].ingredients,{"electronic-circuit", 5})

data:extend(
{
  --[[Pollution Cleaning Modules]]
  {
    type = "recipe",
    name = "pollution-clean-module-1",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
	  {"copper-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 5,
    result = "pollution-clean-module-1"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-2",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-1", 1},
      {"iron-plate", 5},
	  {"steel-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 10,
    result = "pollution-clean-module-2"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-3",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-2", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 20,
    result = "pollution-clean-module-3"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-4",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-3", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
    },
    energy_required = 40,
    result = "pollution-clean-module-4"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-5",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-4", 1},
	  {"steel-plate", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "pollution-clean-module-5"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-6",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-5", 1},
      {"processing-unit", 5},
    },
    energy_required = 160,
    result = "pollution-clean-module-6"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-7",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-6", 1},
      {"processing-unit", 5},
      {"advanced-processing-unit", 5},
    },
    energy_required = 320,
    result = "pollution-clean-module-7"
  },
  {
    type = "recipe",
    name = "pollution-clean-module-8",
    enabled = false,
    ingredients =
    {
      {"pollution-clean-module-7", 1},
      {"advanced-processing-unit", 25},
    },
    energy_required = 640,
    result = "pollution-clean-module-8"
  },
  --[[Pollution Producing Modules]]--
  {
    type = "recipe",
    name = "pollution-create-module-1",
    enabled = false,
    ingredients =
    {
      {"iron-plate", 5},
	  {"copper-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 5,
    result = "pollution-create-module-1"
  },
  {
    type = "recipe",
    name = "pollution-create-module-2",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-1", 1},
      {"iron-plate", 5},
	  {"steel-plate", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 10,
    result = "pollution-create-module-2"
  },
  {
    type = "recipe",
    name = "pollution-create-module-3",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-2", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"electronic-circuit", 5},
    },
    energy_required = 20,
    result = "pollution-create-module-3"
  },
  {
    type = "recipe",
    name = "pollution-create-module-4",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-3", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
    },
    energy_required = 40,
    result = "pollution-create-module-4"
  },
  {
    type = "recipe",
    name = "pollution-create-module-5",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-4", 1},
	  {"steel-plate", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "pollution-create-module-5"
  },
  {
    type = "recipe",
    name = "pollution-create-module-6",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-5", 1},
      {"processing-unit", 5},
    },
    energy_required = 160,
    result = "pollution-create-module-6"
  },
  {
    type = "recipe",
    name = "pollution-create-module-7",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-6", 1},
      {"processing-unit", 5},
      {"advanced-processing-unit", 5},
    },
    energy_required = 320,
    result = "pollution-create-module-7"
  },
  {
    type = "recipe",
    name = "pollution-create-module-8",
    enabled = false,
    ingredients =
    {
      {"pollution-create-module-7", 1},
      {"advanced-processing-unit", 25},
    },
    energy_required = 640,
    result = "pollution-create-module-8"
  },
  --[[Speed Modules]]--
  {
    type = "recipe",
    name = "speed-module-4",
    enabled = false,
    ingredients =
    {
      {"speed-module-3", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
    },
    energy_required = 40,
    result = "speed-module-4"
  },
  {
    type = "recipe",
    name = "speed-module-5",
    enabled = false,
    ingredients =
    {
      {"speed-module-4", 1},
	  {"steel-plate", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "speed-module-5"
  },
  {
    type = "recipe",
    name = "speed-module-6",
    enabled = false,
    ingredients =
    {
      {"speed-module-5", 1},
      {"processing-unit", 5},
    },
    energy_required = 160,
    result = "speed-module-6"
  },
  {
    type = "recipe",
    name = "speed-module-7",
    enabled = false,
    ingredients =
    {
      {"speed-module-6", 1},
      {"processing-unit", 5},
      {"advanced-processing-unit", 5},
    },
    energy_required = 320,
    result = "speed-module-7"
  },
  {
    type = "recipe",
    name = "speed-module-8",
    enabled = false,
    ingredients =
    {
      {"speed-module-7", 1},
      {"advanced-processing-unit", 25},
    },
    energy_required = 640,
    result = "speed-module-8"
  },
  --[[Effectivity Modules]]--
  {
    type = "recipe",
    name = "effectivity-module-4",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-3", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
    },
    energy_required = 40,
    result = "effectivity-module-4"
  },
  {
    type = "recipe",
    name = "effectivity-module-5",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-4", 1},
	  {"steel-plate", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "effectivity-module-5"
  },
  {
    type = "recipe",
    name = "effectivity-module-6",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-5", 1},
      {"processing-unit", 5},
    },
    energy_required = 160,
    result = "effectivity-module-6"
  },
  {
    type = "recipe",
    name = "effectivity-module-7",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-6", 1},
      {"processing-unit", 5},
      {"advanced-processing-unit", 5},
    },
    energy_required = 320,
    result = "effectivity-module-7"
  },
  {
    type = "recipe",
    name = "effectivity-module-8",
    enabled = false,
    ingredients =
    {
      {"effectivity-module-7", 1},
      {"advanced-processing-unit", 25},
    },
    energy_required = 640,
    result = "effectivity-module-8"
  },
  --[[Productivity Modules]]--
  {
    type = "recipe",
    name = "productivity-module-4",
    enabled = false,
    ingredients =
    {
      {"productivity-module-3", 1},
	  {"steel-plate", 5},
      {"advanced-circuit", 5},
    },
    energy_required = 40,
    result = "productivity-module-4"
  },
  {
    type = "recipe",
    name = "productivity-module-5",
    enabled = false,
    ingredients =
    {
      {"productivity-module-4", 1},
	  {"steel-plate", 5},
      {"processing-unit", 5},
    },
    energy_required = 80,
    result = "productivity-module-5"
  },
  {
    type = "recipe",
    name = "productivity-module-6",
    enabled = false,
    ingredients =
    {
      {"productivity-module-5", 1},
      {"processing-unit", 5},
    },
    energy_required = 160,
    result = "productivity-module-6"
  },
  {
    type = "recipe",
    name = "productivity-module-7",
    enabled = false,
    ingredients =
    {
      {"productivity-module-6", 1},
      {"processing-unit", 5},
      {"advanced-processing-unit", 5},
    },
    energy_required = 320,
    result = "productivity-module-7"
  },
  {
    type = "recipe",
    name = "productivity-module-8",
    enabled = false,
    ingredients =
    {
      {"productivity-module-7", 1},
      {"advanced-processing-unit", 25},
    },
    energy_required = 640,
    result = "productivity-module-8"
  },
}
)