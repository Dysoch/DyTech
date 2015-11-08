require "prototypes.internal-config"

data.raw["technology"]["modules"].unit = Tech.Tier1
data.raw["technology"]["speed-module"].unit = Tech.Tier2
data.raw["technology"]["speed-module-2"].unit = Tech.Tier4
data.raw["technology"]["speed-module-3"].unit = Tech.Tier6
data.raw["technology"]["productivity-module"].unit = Tech.Tier2
data.raw["technology"]["productivity-module-2"].unit = Tech.Tier4
data.raw["technology"]["productivity-module-3"].unit = Tech.Tier6
data.raw["technology"]["effectivity-module"].unit = Tech.Tier2
data.raw["technology"]["effectivity-module-2"].unit = Tech.Tier4
data.raw["technology"]["effectivity-module-3"].unit = Tech.Tier6

data:extend(
{
  {
    type = "technology",
    name = "dymodule",
    icon = "__base__/graphics/technology/module.png",
    effects = {},
    prerequisites = {"modules"},
    unit = Tech.Tier1,
    order = "d-m"
  },
  --[[Pollution Cleaning Modules]]--
  {
    type = "technology",
    name = "pollution-clean-module-1",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-1"
      },
    },
    prerequisites = {"dymodule"},
    unit = Tech.Tier2,
    order = "m-p-cl-1"
  },
  {
    type = "technology",
    name = "pollution-clean-module-2",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-2"
      }
    },
    prerequisites = {"pollution-clean-module-1"},
    unit = Tech.Tier4,
	upgrade = true,
    order = "m-p-cl-2"
  },
  {
    type = "technology",
    name = "pollution-clean-module-3",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-3"
      }
    },
    prerequisites = {"pollution-clean-module-2"},
    unit = Tech.Tier6,
	upgrade = true,
    order = "m-p-cl-3"
  },
  {
    type = "technology",
    name = "pollution-clean-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-4"
      }
    },
    prerequisites = {"pollution-clean-module-3"},
    unit = Tech.Tier8,
	upgrade = true,
    order = "m-p-cl-4"
  },
  {
    type = "technology",
    name = "pollution-clean-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-5"
      }
    },
    prerequisites = {"pollution-clean-module-4"},
    unit = Tech.Tier10,
	upgrade = true,
    order = "m-p-cl-5"
  },
  {
    type = "technology",
    name = "pollution-clean-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-6"
      }
    },
    prerequisites = {"pollution-clean-module-5"},
    unit = Tech.Tier12,
	upgrade = true,
    order = "m-p-cl-6"
  },
  {
    type = "technology",
    name = "pollution-clean-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-7"
      }
    },
    prerequisites = {"pollution-clean-module-6"},
    unit = Tech.Tier14,
	upgrade = true,
    order = "m-p-cl-7"
  },
  {
    type = "technology",
    name = "pollution-clean-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-clean-module-8"
      }
    },
    prerequisites = {"pollution-clean-module-7"},
    unit = Tech.Tier16,
	upgrade = true,
    order = "m-p-cl-8"
  },
  --[[Pollution Producing Modules]]--
  {
    type = "technology",
    name = "pollution-create-module-1",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-1"
      }
    },
    prerequisites = {"dymodule"},
    unit = Tech.Tier2,
    order = "m-p-cr-1"
  },
  {
    type = "technology",
    name = "pollution-create-module-2",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-2"
      }
    },
    prerequisites = {"pollution-create-module-1"},
    unit = Tech.Tier4,
	upgrade = true,
    order = "m-p-cr-2"
  },
  {
    type = "technology",
    name = "pollution-create-module-3",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-3"
      }
    },
    prerequisites = {"pollution-create-module-2"},
    unit = Tech.Tier6,
	upgrade = true,
    order = "m-p-cr-3"
  },
  {
    type = "technology",
    name = "pollution-create-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-4"
      }
    },
    prerequisites = {"pollution-create-module-3"},
    unit = Tech.Tier8,
	upgrade = true,
    order = "m-p-cr-4"
  },
  {
    type = "technology",
    name = "pollution-create-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-5"
      }
    },
    prerequisites = {"pollution-create-module-4"},
    unit = Tech.Tier10,
	upgrade = true,
    order = "m-p-cr-5"
  },
  {
    type = "technology",
    name = "pollution-create-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-6"
      }
    },
    prerequisites = {"pollution-create-module-5"},
    unit = Tech.Tier12,
	upgrade = true,
    order = "m-p-cr-6"
  },
  {
    type = "technology",
    name = "pollution-create-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-7"
      }
    },
    prerequisites = {"pollution-create-module-6"},
    unit = Tech.Tier14,
	upgrade = true,
    order = "m-p-cr-7"
  },
  {
    type = "technology",
    name = "pollution-create-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pollution-create-module-8"
      }
    },
    prerequisites = {"pollution-create-module-7"},
    unit = Tech.Tier16,
	upgrade = true,
    order = "m-p-cr-8"
  },
  --[[Speed Modules]]--
  {
    type = "technology",
    name = "speed-module-4",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-4"
      }
    },
    prerequisites = {"speed-module-3", "dymodule"},
    unit = Tech.Tier8,
	upgrade = true,
    order = "m-s-4"
  },
  {
    type = "technology",
    name = "speed-module-5",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-5"
      }
    },
    prerequisites = {"speed-module-4"},
    unit = Tech.Tier10,
	upgrade = true,
    order = "m-s-5"
  },
  {
    type = "technology",
    name = "speed-module-6",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-6"
      }
    },
    prerequisites = {"speed-module-5"},
    unit = Tech.Tier12,
	upgrade = true,
    order = "m-s-6"
  },
  {
    type = "technology",
    name = "speed-module-7",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-7"
      }
    },
    prerequisites = {"speed-module-6"},
    unit = Tech.Tier14,
	upgrade = true,
    order = "m-s-7"
  },
  {
    type = "technology",
    name = "speed-module-8",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-8"
      }
    },
    prerequisites = {"speed-module-7"},
    unit = Tech.Tier16,
	upgrade = true,
    order = "m-s-8"
  },
  --[[Effectivity Modules]]--
  {
    type = "technology",
    name = "effectivity-module-4",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-4"
      }
    },
    prerequisites = {"effectivity-module-3", "dymodule"},
    unit = Tech.Tier8,
	upgrade = true,
    order = "m-e-4"
  },
  {
    type = "technology",
    name = "effectivity-module-5",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-5"
      }
    },
    prerequisites = {"effectivity-module-4"},
    unit = Tech.Tier10,
	upgrade = true,
    order = "m-e-5"
  },
  {
    type = "technology",
    name = "effectivity-module-6",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-6"
      }
    },
    prerequisites = {"effectivity-module-5"},
    unit = Tech.Tier12,
	upgrade = true,
    order = "m-e-6"
  },
  {
    type = "technology",
    name = "effectivity-module-7",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-7"
      }
    },
    prerequisites = {"effectivity-module-6"},
    unit = Tech.Tier14,
	upgrade = true,
    order = "m-e-7"
  },
  {
    type = "technology",
    name = "effectivity-module-8",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-8"
      }
    },
    prerequisites = {"effectivity-module-7"},
    unit = Tech.Tier16,
	upgrade = true,
    order = "m-e-8"
  },
  --[[Productivity Modules]]--
  {
    type = "technology",
    name = "productivity-module-4",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-4"
      }
    },
    prerequisites = {"productivity-module-3", "dymodule"},
    unit = Tech.Tier8,
	upgrade = true,
    order = "m-p-4"
  },
  {
    type = "technology",
    name = "productivity-module-5",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-5"
      }
    },
    prerequisites = {"productivity-module-4"},
    unit = Tech.Tier10,
	upgrade = true,
    order = "m-p-5"
  },
  {
    type = "technology",
    name = "productivity-module-6",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-6"
      }
    },
    prerequisites = {"productivity-module-5"},
    unit = Tech.Tier12,
	upgrade = true,
    order = "m-p-6"
  },
  {
    type = "technology",
    name = "productivity-module-7",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-7"
      }
    },
    prerequisites = {"productivity-module-6"},
    unit = Tech.Tier14,
	upgrade = true,
    order = "m-p-7"
  },
  {
    type = "technology",
    name = "productivity-module-8",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-8"
      }
    },
    prerequisites = {"productivity-module-7"},
    unit = Tech.Tier16,
	upgrade = true,
    order = "m-p-8"
  },
}
)
