data.raw["module"]["speed-module"].icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module.png"
data.raw["module"]["speed-module-2"].icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-2.png"
data.raw["module"]["speed-module-3"].icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-3.png"
data.raw["module"]["speed-module"].effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.3}}
data.raw["module"]["speed-module-2"].effect = { speed = {bonus = 0.3}, consumption = {bonus = 0.45}}
data.raw["module"]["speed-module-3"].effect = { speed = {bonus = 0.5}, consumption = {bonus = 0.75}}
data.raw["module"]["effectivity-module"].icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module.png"
data.raw["module"]["effectivity-module-2"].icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-2.png"
data.raw["module"]["effectivity-module-3"].icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-3.png"
data.raw["module"]["effectivity-module"].effect = { consumption = {bonus = -0.1}}
data.raw["module"]["effectivity-module-2"].effect = { consumption = {bonus = -0.2}}
data.raw["module"]["effectivity-module-3"].effect = { consumption = {bonus = -0.35}}
data.raw["module"]["productivity-module"].icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module.png"
data.raw["module"]["productivity-module-2"].icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-2.png"
data.raw["module"]["productivity-module-3"].icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-3.png"
data.raw["module"]["productivity-module"].effect = { productivity = {bonus = 0.02}, consumption = {bonus = 0.1}, pollution = {bonus = 0.1}, speed = {bonus = -0.03}}
data.raw["module"]["productivity-module-2"].effect = { productivity = {bonus = 0.04}, consumption = {bonus = 0.2}, pollution = {bonus = 0.2}, speed = {bonus = -0.08}}
data.raw["module"]["productivity-module-3"].effect = { productivity = {bonus = 0.08}, consumption = {bonus = 0.3}, pollution = {bonus = 0.3}, speed = {bonus = -0.2}}
data.raw["module"]["speed-module"].subgroup = "speed-module"
data.raw["module"]["speed-module-2"].subgroup = "speed-module"
data.raw["module"]["speed-module-3"].subgroup = "speed-module"
data.raw["module"]["effectivity-module"].subgroup = "effectivity-module"
data.raw["module"]["effectivity-module-2"].subgroup = "effectivity-module"
data.raw["module"]["effectivity-module-3"].subgroup = "effectivity-module"
data.raw["module"]["productivity-module"].subgroup = "productivity-module"
data.raw["module"]["productivity-module-2"].subgroup = "productivity-module"
data.raw["module"]["productivity-module-3"].subgroup = "productivity-module"

data:extend(
{
  --[[Pollution Cleaning Modules]]--
  {
    type = "module",
    name = "pollution-clean-module-1",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-1",
    stack_size = 50,
    effect = {pollution = {bonus = -0.2}}
  },
  {
    type = "module",
    name = "pollution-clean-module-2",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-2",
    stack_size = 50,
    effect = {pollution = {bonus = -0.3}}
  },
  {
    type = "module",
    name = "pollution-clean-module-3",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-3",
    stack_size = 50,
    effect = {pollution = {bonus = -0.5}}
  },
  {
    type = "module",
    name = "pollution-clean-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-4",
    stack_size = 50,
    effect = {pollution = {bonus = -0.6}}
  },
  {
    type = "module",
    name = "pollution-clean-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-5",
    stack_size = 50,
    effect = {pollution = {bonus = -0.8}}
  },
  {
    type = "module",
    name = "pollution-clean-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-6",
    stack_size = 50,
    effect = {pollution = {bonus = -0.9}}
  },
  {
    type = "module",
    name = "pollution-clean-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-7",
    stack_size = 50,
    effect = {pollution = {bonus = -1.2}}
  },
  {
    type = "module",
    name = "pollution-clean-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-clean-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-8",
    stack_size = 50,
    effect = {pollution = {bonus = -1.6}}
  },
  --[[Pollution Producing Modules]]--
  {
    type = "module",
    name = "pollution-create-module-1",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-1",
    stack_size = 50,
    effect = {pollution = {bonus = 0.2}}
  },
  {
    type = "module",
    name = "pollution-create-module-2",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-2",
    stack_size = 50,
    effect = {pollution = {bonus = 0.3}}
  },
  {
    type = "module",
    name = "pollution-create-module-3",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-3",
    stack_size = 50,
    effect = {pollution = {bonus = 0.5}}
  },
  {
    type = "module",
    name = "pollution-create-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-4",
    stack_size = 50,
    effect = {pollution = {bonus = 0.6}}
  },
  {
    type = "module",
    name = "pollution-create-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-5",
    stack_size = 50,
    effect = {pollution = {bonus = 0.8}}
  },
  {
    type = "module",
    name = "pollution-create-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-6",
    stack_size = 50,
    effect = {pollution = {bonus = 0.9}}
  },
  {
    type = "module",
    name = "pollution-create-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-7",
    stack_size = 50,
    effect = {pollution = {bonus = 1.2}}
  },
  {
    type = "module",
    name = "pollution-create-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/pollution-create-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-8",
    stack_size = 50,
    effect = {pollution = {bonus = 1.6}}
  },
  --[[Speed Modules]]--
  {
    type = "module",
    name = "speed-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-4",
    stack_size = 50,
    effect = { speed = {bonus = 0.6}, consumption = {bonus = 0.9}}
  },
  {
    type = "module",
    name = "speed-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-5",
    stack_size = 50,
    effect = { speed = {bonus = 0.8}, consumption = {bonus = 1.2}}
  },
  {
    type = "module",
    name = "speed-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-6",
    stack_size = 50,
    effect = { speed = {bonus = 0.9}, consumption = {bonus = 1.35}}
  },
  {
    type = "module",
    name = "speed-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-7",
    stack_size = 50,
    effect = { speed = {bonus = 1.2}, consumption = {bonus = 1.8}}
  },
  {
    type = "module",
    name = "speed-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/speed-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-8",
    stack_size = 50,
    effect = { speed = {bonus = 1.6}, consumption = {bonus = 2.4}}
  },
  --[[Effectivity Modules]]--
  {
    type = "module",
    name = "effectivity-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-4",
    stack_size = 50,
    effect = { consumption = {bonus = -0.45}}
  },
  {
    type = "module",
    name = "effectivity-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-5",
    stack_size = 50,
    effect = { consumption = {bonus = -0.6}}
  },
  {
    type = "module",
    name = "effectivity-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-6",
    stack_size = 50,
    effect = { consumption = {bonus = -0.7}}
  },
  {
    type = "module",
    name = "effectivity-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-7",
    stack_size = 50,
    effect = { consumption = {bonus = -1.0}}
  },
  {
    type = "module",
    name = "effectivity-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/effectivity-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-8",
    stack_size = 50,
    effect = { consumption = {bonus = -1.4}}
  },
  --[[Productivity Modules]]--
  {
    type = "module",
    name = "productivity-module-4",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-4",
    stack_size = 50,
    effect = { productivity = {bonus = 0.1}, consumption = {bonus = 0.4}, pollution = {bonus = 0.4}, speed = {bonus = -0.3}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-5",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-5",
    stack_size = 50,
    effect = { productivity = {bonus = 0.16}, consumption = {bonus = 0.6}, pollution = {bonus = 0.6}, speed = {bonus = -0.56}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-6",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-6",
    stack_size = 50,
    effect = { productivity = {bonus = 0.18}, consumption = {bonus = 0.7}, pollution = {bonus = 0.7}, speed = {bonus = -0.72}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-7",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-7",
    stack_size = 50,
    effect = { productivity = {bonus = 0.28}, consumption = {bonus = 1.1}, pollution = {bonus = 1.1}, speed = {bonus = -1.26}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-8",
    icon = "__MAIN-DyTech-Machine__/graphics/modules/productivity-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-8",
    stack_size = 50,
    effect = { productivity = {bonus = 0.4}, consumption = {bonus = 1.6}, pollution = {bonus = 1.6}, speed = {bonus = -2.0}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
}
)
