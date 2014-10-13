function productivitymodulelimitation()
return {"sulfuric-acid",
        "basic-oil-processing",
        "advanced-oil-processing",
        "heavy-oil-cracking",
        "light-oil-cracking",
        "solid-fuel-from-light-oil",
        "solid-fuel-from-heavy-oil",
        "solid-fuel-from-petroleum-gas",
        "lubricant",
        "iron-plate",
        "copper-plate",
        "steel-plate",
        "stone-brick",
        "sulfur",
        "plastic-bar",
        "empty-barrel",
        "iron-stick",
        "iron-gear-wheel",
        "copper-cable",
        "electronic-circuit",
        "advanced-circuit",
        "engine-unit",
        "electric-engine-unit",
        "processing-unit",
        "explosives",
        "battery",
        "flying-robot-frame",
        "science-pack-1",
        "science-pack-2",
        "science-pack-3",
        "alien-science-pack",
      }
end

data:extend(
{
  --[[Pollution Cleaning Modules]]--
  {
    type = "module",
    name = "pollution-clean-module-1",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-1",
    stack_size = 50,
    effect = {pollution = {bonus = -0.2}}
  },
  {
    type = "module",
    name = "pollution-clean-module-2",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-2",
    stack_size = 50,
    effect = {pollution = {bonus = -0.4}}
  },
  {
    type = "module",
    name = "pollution-clean-module-3",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-3",
    stack_size = 50,
    effect = {pollution = {bonus = -0.6}}
  },
  {
    type = "module",
    name = "pollution-clean-module-4",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-4",
    stack_size = 50,
    effect = {pollution = {bonus = -0.8}}
  },
  {
    type = "module",
    name = "pollution-clean-module-5",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-5",
    stack_size = 50,
    effect = {pollution = {bonus = -1.0}}
  },
  {
    type = "module",
    name = "pollution-clean-module-6",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-6",
    stack_size = 50,
    effect = {pollution = {bonus = -1.2}}
  },
  {
    type = "module",
    name = "pollution-clean-module-7",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-clean-module",
    order = "m-p-cl-7",
    stack_size = 50,
    effect = {pollution = {bonus = -1.4}}
  },
  {
    type = "module",
    name = "pollution-clean-module-8",
    icon = "__DyTech-Modules__/graphics/icons/pollution-clean-module-8.png",
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
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-1",
    stack_size = 50,
    effect = {pollution = {bonus = 0.2}}
  },
  {
    type = "module",
    name = "pollution-create-module-2",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-2",
    stack_size = 50,
    effect = {pollution = {bonus = 0.4}}
  },
  {
    type = "module",
    name = "pollution-create-module-3",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-3",
    stack_size = 50,
    effect = {pollution = {bonus = 0.6}}
  },
  {
    type = "module",
    name = "pollution-create-module-4",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-4",
    stack_size = 50,
    effect = {pollution = {bonus = 0.8}}
  },
  {
    type = "module",
    name = "pollution-create-module-5",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-5",
    stack_size = 50,
    effect = {pollution = {bonus = 1.0}}
  },
  {
    type = "module",
    name = "pollution-create-module-6",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-6",
    stack_size = 50,
    effect = {pollution = {bonus = 1.2}}
  },
  {
    type = "module",
    name = "pollution-create-module-7",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "pollution-create-module",
    order = "m-p-cr-7",
    stack_size = 50,
    effect = {pollution = {bonus = 1.4}}
  },
  {
    type = "module",
    name = "pollution-create-module-8",
    icon = "__DyTech-Modules__/graphics/icons/pollution-create-module-8.png",
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
    icon = "__DyTech-Modules__/graphics/icons/speed-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-4",
    stack_size = 50,
    effect = { speed = {bonus = 0.8}, consumption = {bonus = 0.4}}
  },
  {
    type = "module",
    name = "speed-module-5",
    icon = "__DyTech-Modules__/graphics/icons/speed-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-5",
    stack_size = 50,
    effect = { speed = {bonus = 1.0}, consumption = {bonus = 0.5}}
  },
  {
    type = "module",
    name = "speed-module-6",
    icon = "__DyTech-Modules__/graphics/icons/speed-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-6",
    stack_size = 50,
    effect = { speed = {bonus = 1.2}, consumption = {bonus = 0.6}}
  },
  {
    type = "module",
    name = "speed-module-7",
    icon = "__DyTech-Modules__/graphics/icons/speed-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-7",
    stack_size = 50,
    effect = { speed = {bonus = 1.4}, consumption = {bonus = 0.7}}
  },
  {
    type = "module",
    name = "speed-module-8",
    icon = "__DyTech-Modules__/graphics/icons/speed-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "speed-module",
    order = "m-s-8",
    stack_size = 50,
    effect = { speed = {bonus = 1.6}, consumption = {bonus = 0.8}}
  },
  --[[Effectivity Modules]]--
  {
    type = "module",
    name = "effectivity-module-4",
    icon = "__DyTech-Modules__/graphics/icons/effectivity-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-4",
    stack_size = 50,
    effect = { consumption = {bonus = -1.0}}
  },
  {
    type = "module",
    name = "effectivity-module-5",
    icon = "__DyTech-Modules__/graphics/icons/effectivity-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-5",
    stack_size = 50,
    effect = { consumption = {bonus = -1.25}}
  },
  {
    type = "module",
    name = "effectivity-module-6",
    icon = "__DyTech-Modules__/graphics/icons/effectivity-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-6",
    stack_size = 50,
    effect = { consumption = {bonus = -1.50}}
  },
  {
    type = "module",
    name = "effectivity-module-7",
    icon = "__DyTech-Modules__/graphics/icons/effectivity-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-7",
    stack_size = 50,
    effect = { consumption = {bonus = -1.75}}
  },
  {
    type = "module",
    name = "effectivity-module-8",
    icon = "__DyTech-Modules__/graphics/icons/effectivity-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "effectivity-module",
    order = "m-e-8",
    stack_size = 50,
    effect = { consumption = {bonus = -2.0}}
  },
  --[[Productivity Modules]]--
  {
    type = "module",
    name = "productivity-module-4",
    icon = "__DyTech-Modules__/graphics/icons/productivity-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-4",
    stack_size = 50,
    effect = { productivity = {bonus = 0.2}, consumption = {bonus = 0.8}, pollution = {bonus = 0.8}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-5",
    icon = "__DyTech-Modules__/graphics/icons/productivity-module-5.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-5",
    stack_size = 50,
    effect = { productivity = {bonus = 0.25}, consumption = {bonus = 1.0}, pollution = {bonus = 1.0}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-6",
    icon = "__DyTech-Modules__/graphics/icons/productivity-module-6.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-6",
    stack_size = 50,
    effect = { productivity = {bonus = 0.3}, consumption = {bonus = 1.2}, pollution = {bonus = 1.2}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-7",
    icon = "__DyTech-Modules__/graphics/icons/productivity-module-7.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-7",
    stack_size = 50,
    effect = { productivity = {bonus = 0.4}, consumption = {bonus = 1.6}, pollution = {bonus = 1.6}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
  {
    type = "module",
    name = "productivity-module-8",
    icon = "__DyTech-Modules__/graphics/icons/productivity-module-8.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "productivity-module",
    order = "m-p-8",
    stack_size = 50,
    effect = { productivity = {bonus = 0.5}, consumption = {bonus = 2.0}, pollution = {bonus = 2.0}},
    limitation = productivitymodulelimitation(),
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
}
)
