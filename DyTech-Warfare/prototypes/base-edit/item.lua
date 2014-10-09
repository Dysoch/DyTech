data.raw["item"]["basic-laser-defense-equipment"].icon = "__DyTech-Warfare__/graphics/icons/basic-laser-defense-equipment-1.png"
data.raw["item"]["laser-turret"].icon = "__DyTech-Warfare__/graphics/icons/laser-ruby-1.png"
data.raw["item"]["battery"].magazine_size = 50 
data.raw["item"]["battery"].subgroup = "ammo"
data.raw["item"]["battery"].order = "i[battery-1]"
data.raw["item"]["battery"].stack_size = 100
data.raw["item"]["battery"].ammo_type = { category = "battery" }
data.raw["item"]["battery"].ammo_type.action = { type = "direct" }
data.raw["item"]["battery"].ammo_type.action.action_delivery = { type = "projectile", projectile = "laser-ruby-1", starting_speed = 0.25 }
data.raw["item"]["battery"].ammo_type.action.action_delivery.source_effects = { type = "create-entity", entity_name = "laser-bubble" }
data.raw["ammo"]["battery"] = data.raw["item"]["battery"]
data.raw.item["battery"] = nil
data.raw["item"]["basic-grenade"].order = "a[basic-grenade-1]"