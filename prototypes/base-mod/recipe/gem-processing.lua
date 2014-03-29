data:extend(
{
--[[MACHINES]]--
  {
    type = "recipe",
    name = "gem-crusher",
    enabled = false,
    ingredients =
    {
      {"tungsten-gear-wheel", 5},
      {"assembling-machine-3", 1},
    },
    result = "gem-crusher"
  },
  {
    type = "recipe",
    name = "gem-grinder",
    enabled = false,
    ingredients =
    {
      {"brass-alloy", 15},
      {"assembling-machine-2", 2},
	  {"tungsten-gear-wheel", 5}
    },
    result = "gem-grinder"
  },
  {
    type = "recipe",
    name = "gem-polisher",
    enabled = false,
    ingredients =
    {
      {"tungsten-plate", 25},
	  {"copper-tungsten-alloy", 15},
      {"assembling-machine-3", 2},
	  {"diamond-4", 5}
    },
    result = "gem-polisher"
  },
  --[[GEM WORKING]]--
  --[[CRUSHING]]--
  {
    type = "recipe",
    name = "ruby-2",
	category = "gem-crushing",
	energy_required = 12,
    ingredients =
    {
	  {"ruby-ore", 1},
    },
    result = "ruby-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "topaz-2",
	category = "gem-crushing",
	energy_required = 12,
    ingredients =
    {
	  {"topaz-ore", 1},
    },
    result = "topaz-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "emerald-2",
	category = "gem-crushing",
	energy_required = 12,
    ingredients =
    {
	  {"emerald-ore", 1},
    },
    result = "emerald-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "diamond-2",
	category = "gem-crushing",
	energy_required = 12,
    ingredients =
    {
	  {"diamond-ore", 1},
    },
    result = "diamond-2",
	result_count =  2
  },
  {
    type = "recipe",
    name = "sapphire-2",
	category = "gem-crushing",
	energy_required = 12,
    ingredients =
    {
	  {"sapphire-ore", 1},
    },
    result = "sapphire-2",
	result_count =  2
  },
  --[[GRINDING]]--
  {
    type = "recipe",
    name = "ruby-3",
	category = "gem-grinding",
	energy_required = 25,
    ingredients =
    {
	  {"ruby-2", 1},
    },
    result = "ruby-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "topaz-3",
	category = "gem-grinding",
	energy_required = 25,
    ingredients =
    {
	  {"topaz-2", 1},
    },
    result = "topaz-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "emerald-3",
	category = "gem-grinding",
	energy_required = 25,
    ingredients =
    {
	  {"emerald-2", 1},
    },
    result = "emerald-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "diamond-3",
	category = "gem-grinding",
	energy_required = 25,
    ingredients =
    {
	  {"diamond-2", 1},
    },
    result = "diamond-3",
	result_count =  2
  },
  {
    type = "recipe",
    name = "sapphire-3",
	category = "gem-grinding",
	energy_required = 25,
    ingredients =
    {
	  {"sapphire-2", 1},
    },
    result = "sapphire-3",
	result_count =  2
  },
  --[[CUTTING]]--
  {
    type = "recipe",
    name = "ruby-4",
	category = "compressing",
	enabled = true,
	energy_required = 50,
    ingredients =
    {
	  {"ruby-3", 1},
	  {"sand", 100},
    },
    result = "ruby-4",
  },
  {
    type = "recipe",
    name = "topaz-4",
	category = "compressing",
	enabled = true,
	energy_required = 50,
    ingredients =
    {
	  {"topaz-3", 1},
	  {"sand", 100},
    },
    result = "topaz-4",
  },
  {
    type = "recipe",
    name = "emerald-4",
	category = "compressing",
	enabled = true,
	energy_required = 50,
    ingredients =
    {
	  {"emerald-3", 1},
	  {"sand", 100},
    },
    result = "emerald-4",
  },
  {
    type = "recipe",
    name = "diamond-4",
	category = "compressing",
	enabled = true,
	energy_required = 50,
    ingredients =
    {
	  {"diamond-3", 1},
	  {"sand", 100},
    },
    result = "diamond-4",
  },
  {
    type = "recipe",
    name = "sapphire-4",
	category = "compressing",
	enabled = true,
	energy_required = 50,
    ingredients =
    {
	  {"sapphire-3", 1},
	  {"sand", 100},
    },
    result = "sapphire-4",
  },
  --[[POLISHING]]--
  {
    type = "recipe",
    name = "ruby-5",
	category = "gem-polishing",
	energy_required = 75,
    ingredients =
    {
	  {"ruby-4", 15},
	  {"sand", 1000},
    },
    result = "ruby-5",
  },
  {
    type = "recipe",
    name = "topaz-5",
	category = "gem-polishing",
	energy_required = 75,
    ingredients =
    {
	  {"topaz-4", 15},
	  {"sand", 1000},
    },
    result = "topaz-5",
  },
  {
    type = "recipe",
    name = "emerald-5",
	category = "gem-polishing",
	energy_required = 75,
    ingredients =
    {
	  {"emerald-4", 15},
	  {"sand", 1000},
    },
    result = "emerald-5",
  },
  {
    type = "recipe",
    name = "diamond-5",
	category = "gem-polishing",
	energy_required = 75,
    ingredients =
    {
	  {"diamond-4", 15},
	  {"sand", 1000},
    },
    result = "diamond-5",
  },
  {
    type = "recipe",
    name = "sapphire-5",
	category = "gem-polishing",
	energy_required = 75,
    ingredients =
    {
	  {"sapphire-4", 15},
	  {"sand", 1000},
    },
    result = "sapphire-5",
  },
  --[[USELESS ORE GRINDING]]--
  {
    type = "recipe",
    name = "sand-1",
	category = "gem-grinding",
	energy_required = 50,
    ingredients =
    {
	  {"ruby-orex", 1},
    },
    result = "sand",
	result_count =  100
  },
  {
    type = "recipe",
    name = "sand-2",
	category = "gem-grinding",
	energy_required = 50,
    ingredients =
    {
	  {"topaz-orex", 1},
    },
    result = "sand",
	result_count =  100
  },
  {
    type = "recipe",
    name = "sand-3",
	category = "gem-grinding",
	energy_required = 50,
    ingredients =
    {
	  {"emerald-orex", 1},
    },
    result = "sand",
	result_count =  100
  },
  {
    type = "recipe",
    name = "sand-4",
	category = "gem-grinding",
	energy_required = 50,
    ingredients =
    {
	  {"diamond-orex", 1},
    },
    result = "sand",
	result_count =  100
  },
  {
    type = "recipe",
    name = "sand-5",
	category = "gem-grinding",
	energy_required = 50,
    ingredients =
    {
	  {"sapphire-orex", 1},
    },
    result = "sand",
	result_count =  100
  },
  --[[STONE GRINDING]]--
  {
    type = "recipe",
    name = "sand-0",
	category = "gem-grinding",
	energy_required = 50,
    ingredients =
    {
	  {"stone", 1},
    },
    result = "sand",
	result_count =  100
  },
}
)