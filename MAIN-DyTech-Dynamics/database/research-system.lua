module("RSDatabase")

--  [""] = {},

--[[ Explanation ]]--
-- This is the database that is needed for both the Tech removal code and the system itself.
-- this happens tiered ingame. Please check Research-Events.txt for more info
-- Tier 1  =  event 1 t/m 450
-- Tier 2  =  event 451 t/m 900
-- Tier 3  =  event 901 t/m 1350
-- Tier 4  =  event 1351 t/m 1800


ItemUnlock  = 
{
	-- Tier 1 Base Game
	["iron-gear-wheel"] = 
	{
		Tech = "automation", 
		Points = 2, 
		Hour = 0, 
		Minute = 10, 
		Event = 1, 
		Tier = 1,
		Locale = "item"
	},
	["long-handed-inserter"] = 
	{
		Tech = "automation", 
		Points = 3, 
		Hour = 0, 
		Minute = 15, 
		Event = 2, 
		Tier = 1,
		Locale = "entity"
	},
	["assembling-machine-1"] = 
	{
		Tech = "automation", 
		Points = 5, 
		Hour = 0, 
		Minute = 15, 
		Event = 3, 
		Tier = 1,
		Locale = "entity"
	},
	["steel-plate"] = 
	{
		Tech = "steel-processing", 
		Points = 7, 
		Hour = 0, 
		Minute = 20, 
		Event = 4, 
		Tier = 1,
		Locale = "item"
	},
	["steel-chest"] = 
	{
		Tech = "steel-processing", 
		Points = 7, 
		Hour = 0, 
		Minute = 20, 
		Event = 5, 
		Tier = 1,
		Locale = "entity"
	},
	["steel-axe"] = 
	{
		Tech = "steel-processing", 
		Points = 6, 
		Hour = 0, 
		Minute = 20, 
		Event = 6, 
		Tier = 1,
		Locale = "item"
	},
	["submachine-gun"] = 
	{
		Tech = "military", 
		Points = 4, 
		Hour = 0, 
		Minute = 10, 
		Event = 7, 
		Tier = 1,
		Locale = "item"
	},
	["shotgun"] = 
	{
		Tech = "military", 
		Points = 4, 
		Hour = 0, 
		Minute = 10, 
		Event = 8, 
		Tier = 1,
		Locale = "item"
	},
	["shotgun-shell"] = 
	{
		Tech = "military", 
		Points = 2, 
		Hour = 0, 
		Minute = 10, 
		Event = 9, 
		Tier = 1,
		Locale = "item"
	},
	["gun-turret"] = 
	{
		Tech = "turrets", 
		Points = 10, 
		Hour = 0, 
		Minute = 5, 
		Event = 10, 
		Tier = 1,
		Locale = "entity"
	},
	["stone-wall"] = 
	{
		Tech = "stone-walls", 
		Points = 10, 
		Hour = 0, 
		Minute = 30, 
		Event = 11, 
		Tier = 1,
		Locale = "entity"
	},
	["smart-inserter"] = 
	{
		Tech = "electronics", 
		Points = 25, 
		Hour = 1, 
		Minute = 0, 
		Event = 12, 
		Tier = 1,
		Locale = "entity"
	},
	["assembling-machine-2"] = 
	{
		Tech = "automation-2", 
		Points = 75, 
		Hour = 1, 
		Minute = 0, 
		Event = 13, 
		Tier = 1,
		Locale = "entity"
	},
	["basic-transport-belt-to-ground"] = 
	{
		Tech = "logistics", 
		Points = 10, 
		Hour = 0, 
		Minute = 30, 
		Event = 14, 
		Tier = 1,
		Locale = "entity"
	},
	["fast-inserter"] = 
	{
		Tech = "logistics", 
		Points = 10, 
		Hour = 0, 
		Minute = 30, 
		Event = 15, 
		Tier = 1,
		Locale = "entity"
	},
	["basic-splitter"] = 
	{
		Tech = "logistics", 
		Points = 10, 
		Hour = 0, 
		Minute = 30, 
		Event = 16, 
		Tier = 1,
		Locale = "entity"
	},
	["basic-armor"] = 
	{
		Tech = "armor-making", 
		Points = 10, 
		Hour = 0, 
		Minute = 45, 
		Event = 17, 
		Tier = 1,
		Locale = "item"
	},
	["heavy-armor"] = 
	{
		Tech = "armor-making-2", 
		Points = 25, 
		Hour = 1, 
		Minute = 30, 
		Event = 18, 
		Tier = 1,
		Locale = "item"
	},
	["small-lamp"] = 
	{
		Tech = "optics", 
		Points = 5, 
		Hour = 0, 
		Minute = 2, 
		Event = 19, 
		Tier = 1,
		Locale = "entity"
	},
	-- Tier 2 Base Game
	["piercing-bullet-magazine"] = 
	{
		Tech = "military-2", 
		Points = 15, 
		Hour = 1, 
		Minute = 0, 
		Event = 451, 
		Tier = 2,
		Locale = "item"
	},
	["basic-grenade"] = 
	{
		Tech = "military-2", 
		Points = 20, 
		Hour = 1, 
		Minute = 0, 
		Event = 452, 
		Tier = 2,
		Locale = "item"
	},
	["explosives"] = 
	{
		Tech = "explosives", 
		Points = 110, 
		Hour = 2, 
		Minute = 0, 
		Event = 453, 
		Tier = 2,
		Locale = "item"
	},
	["land-mine"] = 
	{
		Tech = "land-mine", 
		Points = 35, 
		Hour = 2, 
		Minute = 0, 
		Event = 454, 
		Tier = 2,
		Locale = "entity"
	},
	["flame-thrower"] = 
	{
		Tech = "flame-thrower", 
		Points = 35, 
		Hour = 2, 
		Minute = 30, 
		Event = 455, 
		Tier = 2,
		Locale = "item"
	},
	["flame-thrower-ammo"] = 
	{
		Tech = "flame-thrower", 
		Points = 5, 
		Hour = 2, 
		Minute = 30, 
		Event = 456, 
		Tier = 2,
		Locale = "item"
	},
	["processing-unit"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Hour = 1, 
		Minute = 15, 
		Event = 457, 
		Tier = 2,
		Locale = "item"
	},
	["advanced-circuit"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Hour = 1, 
		Minute = 15, 
		Event = 458, 
		Tier = 2,
		Locale = "item"
	},
	["green-wire"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Hour = 1, 
		Minute = 15, 
		Event = 459, 
		Tier = 2,
		Locale = "item"
	},
	["red-wire"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Hour = 1, 
		Minute = 15, 
		Event = 460, 
		Tier = 2,
		Locale = "item"
	},
	["smart-chest"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Hour = 1, 
		Minute = 15, 
		Event = 461, 
		Tier = 2,
		Locale = "entity"
	},
	["diesel-locomotive"] = 
	{
		Tech = "railway", 
		Points = 65, 
		Hour = 2, 
		Minute = 15, 
		Event = 462, 
		Tier = 2,
		Locale = "entity"
	},
	["curved-rail"] = 
	{
		Tech = "railway", 
		Points = 65, 
		Hour = 2, 
		Minute = 15, 
		Event = 463, 
		Tier = 2,
		Locale = "entity"
	},
	["straight-rail"] = 
	{
		Tech = "railway", 
		Points = 65, 
		Hour = 2, 
		Minute = 15, 
		Event = 464, 
		Tier = 2,
		Locale = "entity"
	},
	["train-stop"] = 
	{
		Tech = "automated-rail-transportation", 
		Points = 100, 
		Hour = 2, 
		Minute = 30, 
		Event = 465, 
		Tier = 2,
		Locale = "entity"
	},
	["cargo-wagon"] = 
	{
		Tech = "automated-rail-transportation", 
		Points = 100, 
		Hour = 2, 
		Minute = 30, 
		Event = 466, 
		Tier = 2,
		Locale = "entity"
	},
	["rail-signal"] = 
	{
		Tech = "rail-signals", 
		Points = 400, 
		Hour = 3, 
		Minute = 0, 
		Event = 467, 
		Tier = 2,
		Locale = "entity"
	},
	["car"] = 
	{
		Tech = "automobilism", 
		Points = 250, 
		Hour = 3, 
		Minute = 0, 
		Event = 468, 
		Tier = 2,
		Locale = "entity"
	},
	["fast-transport-belt"] = 
	{
		Tech = "logistics-2", 
		Points = 20, 
		Hour = 3, 
		Minute = 0, 
		Event = 469, 
		Tier = 2,
		Locale = "entity"
	},
	["fast-transport-belt-to-ground"] = 
	{
		Tech = "logistics-2", 
		Points = 20, 
		Hour = 3, 
		Minute = 0, 
		Event = 470, 
		Tier = 2,
		Locale = "entity"
	},
	["fast-splitter"] = 
	{
		Tech = "logistics-2", 
		Points = 20, 
		Hour = 3, 
		Minute = 0, 
		Event = 471, 
		Tier = 2,
		Locale = "entity"
	},
	["solar-panel"] = 
	{
		Tech = "solar-energy", 
		Points = 180, 
		Hour = 2, 
		Minute = 30, 
		Event = 472, 
		Tier = 2,
		Locale = "entity"
	},
	["rocket-launcher"] = 
	{
		Tech = "rocketry", 
		Points = 180, 
		Hour = 3, 
		Minute = 30, 
		Event = 473, 
		Tier = 2,
		Locale = "item"
	},
	["rocket"] = 
	{
		Tech = "rocketry", 
		Points = 180, 
		Hour = 3, 
		Minute = 30, 
		Event = 474, 
		Tier = 2,
		Locale = "item"
	},
	["basic-modular-armor"] = 
	{
		Tech = "armor-making-3", 
		Points = 180, 
		Hour = 2, 
		Minute = 30, 
		Event = 475, 
		Tier = 2,
		Locale = "item"
	},
	["laser-turret"] = 
	{
		Tech = "laser-turrets", 
		Points = 180, 
		Hour = 3, 
		Minute = 30, 
		Event = 476, 
		Tier = 2,
		Locale = "entity"
	},
	["gate"] = 
	{
		Tech = "gates", 
		Points = 200, 
		Hour = 1, 
		Minute = 0, 
		Event = 477, 
		Tier = 2,
		Locale = "entity"
	},
	["flying-robot-frame"] = 
	{
		Tech = "robotics", 
		Points = 180, 
		Hour = 2, 
		Minute = 30, 
		Event = 478, 
		Tier = 2,
		Locale = "item"
	},
	["alien-science-pack"] = 
	{
		Tech = "alien-technology", 
		Points = 300, 
		Hour = 1, 
		Minute = 30, 
		Event = 479, 
		Tier = 2,
		Locale = "item"
	},
	["medium-electric-pole"] = 
	{
		Tech = "electric-energy-distribution-1", 
		Points = 40, 
		Hour = 1, 
		Minute = 30, 
		Event = 480, 
		Tier = 2,
		Locale = "entity"
	},
	["big-electric-pole"] = 
	{
		Tech = "electric-energy-distribution-1", 
		Points = 60, 
		Hour = 3, 
		Minute = 30, 
		Event = 481, 
		Tier = 2,
		Locale = "entity"
	},
	["basic-accumulator"] = 
	{
		Tech = "electric-energy-accumulators-1", 
		Points = 110, 
		Hour = 2, 
		Minute = 30, 
		Event = 482, 
		Tier = 2,
		Locale = "entity"
	},
	["steel-furnace"] = 
	{
		Tech = "advanced-material-processing", 
		Points = 90, 
		Hour = 2, 
		Minute = 0, 
		Event = 483, 
		Tier = 2,
		Locale = "entity"
	},
	["electric-furnace"] = 
	{
		Tech = "advanced-material-processing-2", 
		Points = 195, 
		Hour = 3, 
		Minute = 30, 
		Event = 484, 
		Tier = 2,
		Locale = "entity"
	},
	["engine-unit"] = 
	{
		Tech = "engine", 
		Points = 85, 
		Hour = 1, 
		Minute = 30, 
		Event = 485, 
		Tier = 2,
		Locale = "item"
	},
	["electric-engine-unit"] = 
	{
		Tech = "electric-engine", 
		Points = 90, 
		Hour = 2, 
		Minute = 30, 
		Event = 486, 
		Tier = 2,
		Locale = "item"
	},
	["battery"] = 
	{
		Tech = "battery", 
		Points = 20, 
		Hour = 1, 
		Minute = 30, 
		Event = 487, 
		Tier = 2,
		Locale = "item"
	},
	["science-pack-3"] = 
	{
		Tech = "battery", 
		Points = 80, 
		Hour = 1, 
		Minute = 30, 
		Event = 488, 
		Tier = 2,
		Locale = "item"
	},
	["speed-module"] = 
	{
		Tech = "speed-module", 
		Points = 100, 
		Hour = 2, 
		Minute = 30, 
		Event = 489, 
		Tier = 2,
		Locale = "item"
	},
	["effectivity-module"] = 
	{
		Tech = "effectivity-module", 
		Points = 100, 
		Hour = 2, 
		Minute = 30, 
		Event = 490, 
		Tier = 2,
		Locale = "item"
	},
	["productivity-module"] = 
	{
		Tech = "productivity-module", 
		Points = 100, 
		Hour = 2, 
		Minute = 30, 
		Event = 491, 
		Tier = 2,
		Locale = "item"
	},
	["roboport"] = 
	{
		Tech = "construction-robotics", 
		Points = 150, 
		Hour = 4, 
		Minute = 30, 
		Event = 492, 
		Tier = 2,
		Locale = "entity"
	},
	["logistic-chest-passive-provider"] = 
	{
		Tech = "construction-robotics", 
		Points = 25, 
		Hour = 4, 
		Minute = 30, 
		Event = 493, 
		Tier = 2,
		Locale = "entity"
	},
	["logistic-chest-storage"] = 
	{
		Tech = "construction-robotics", 
		Points = 25, 
		Hour = 4, 
		Minute = 30, 
		Event = 494, 
		Tier = 2,
		Locale = "entity"
	},
	["construction-robot"] = 
	{
		Tech = "construction-robotics", 
		Points = 100, 
		Hour = 4, 
		Minute = 30, 
		Event = 495, 
		Tier = 2,
		Locale = "entity"
	},
	["blueprint"] = 
	{
		Tech = "automated-construction", 
		Points = 75, 
		Hour = 3, 
		Minute = 30, 
		Event = 496, 
		Tier = 2,
		Locale = "item"
	},
	["deconstruction-planner"] = 
	{
		Tech = "automated-construction", 
		Points = 75, 
		Hour = 3, 
		Minute = 30, 
		Event = 497, 
		Tier = 2,
		Locale = "item"
	},
	["logistic-robot"] = 
	{
		Tech = "logistic-robotics", 
		Points = 100, 
		Hour = 3, 
		Minute = 30, 
		Event = 498, 
		Tier = 2,
		Locale = "entity"
	},
	["energy-shield-equipment"] = 
	{
		Tech = "energy-shield-equipment", 
		Points = 75, 
		Hour = 4, 
		Minute = 15, 
		Event = 499, 
		Tier = 2,
		Locale = "equipment"
	},
	["night-vision-equipment"] = 
	{
		Tech = "night-vision-equipment", 
		Points = 75, 
		Hour = 4, 
		Minute = 15, 
		Event = 500, 
		Tier = 2,
		Locale = "equipment"
	},
	["battery-equipment"] = 
	{
		Tech = "battery-equipment", 
		Points = 75, 
		Hour = 4, 
		Minute = 15, 
		Event = 501, 
		Tier = 2,
		Locale = "equipment"
	},
	["solar-panel-equipment"] = 
	{
		Tech = "solar-panel-equipment", 
		Points = 75, 
		Hour = 4, 
		Minute = 15, 
		Event = 502, 
		Tier = 2,
		Locale = "equipment"
	},
	["storage-tank"] = 
	{
		Tech = "fluid-handling", 
		Points = 50, 
		Hour = 2, 
		Minute = 15, 
		Event = 503, 
		Tier = 2,
		Locale = "entity"
	},
	["small-pump"] = 
	{
		Tech = "fluid-handling", 
		Points = 40, 
		Hour = 2, 
		Minute = 15, 
		Event = 504, 
		Tier = 2,
		Locale = "entity"
	},
	["empty-barrel"] = 
	{
		Tech = "fluid-handling", 
		Points = 25, 
		Hour = 2, 
		Minute = 15, 
		Event = 505, 
		Tier = 2,
		Locale = "item"
	},
	["fill-crude-oil-barrel"] = 
	{
		Tech = "fluid-handling", 
		Points = 10, 
		Hour = 2, 
		Minute = 15, 
		Event = 506, 
		Tier = 2,
		Locale = "recipe"
	},
	["empty-crude-oil-barrel"] = 
	{
		Tech = "fluid-handling", 
		Points = 10, 
		Hour = 2, 
		Minute = 15, 
		Event = 507, 
		Tier = 2,
		Locale = "recipe"
	},
	["pumpjack"] = 
	{
		Tech = "oil-processing", 
		Points = 20, 
		Hour = 2, 
		Minute = 15, 
		Event = 508, 
		Tier = 2,
		Locale = "entity"
	},
	["oil-refinery"] = 
	{
		Tech = "oil-processing", 
		Points = 50, 
		Hour = 2, 
		Minute = 15, 
		Event = 509, 
		Tier = 2,
		Locale = "entity"
	},
	["chemical-plant"] = 
	{
		Tech = "oil-processing", 
		Points = 50, 
		Hour = 2, 
		Minute = 15, 
		Event = 510, 
		Tier = 2,
		Locale = "entity"
	},
	["basic-oil-processing"] = 
	{
		Tech = "oil-processing", 
		Points = 25, 
		Hour = 2, 
		Minute = 15, 
		Event = 511, 
		Tier = 2,
		Locale = "recipe"
	},
	["solid-fuel-from-light-oil"] = 
	{
		Tech = "oil-processing", 
		Points = 10, 
		Hour = 2, 
		Minute = 15, 
		Event = 512, 
		Tier = 2,
		Locale = "recipe"
	},
	["solid-fuel-from-petroleum-gas"] = 
	{
		Tech = "oil-processing", 
		Points = 10, 
		Hour = 2, 
		Minute = 15, 
		Event = 513, 
		Tier = 2,
		Locale = "recipe"
	},
	["solid-fuel-from-heavy-oil"] = 
	{
		Tech = "oil-processing", 
		Points = 10, 
		Hour = 2, 
		Minute = 15, 
		Event = 514, 
		Tier = 2,
		Locale = "recipe"
	},
	["lubricant"] = 
	{
		Tech = "oil-processing", 
		Points = 50, 
		Hour = 2, 
		Minute = 15, 
		Event = 515, 
		Tier = 2,
		Locale = "fluid"
	},
	["sulfur"] = 
	{
		Tech = "sulfur-processing", 
		Points = 75, 
		Hour = 2, 
		Minute = 30, 
		Event = 516, 
		Tier = 2,
		Locale = "item"
	},
	["sulfuric-acid"] = 
	{
		Tech = "sulfur-processing", 
		Points = 125, 
		Hour = 2, 
		Minute = 30, 
		Event = 517, 
		Tier = 2,
		Locale = "fluid"
	},
	["plastic-bar"] = 
	{
		Tech = "plastics", 
		Points = 150, 
		Hour = 2, 
		Minute = 20, 
		Event = 518, 
		Tier = 2,
		Locale = "item"
	},
	["defender-capsule"] = 
	{
		Tech = "combat-robotics", 
		Points = 300, 
		Hour = 3, 
		Minute = 30, 
		Event = 519, 
		Tier = 2,
		Locale = "item"
	},
	-- Tier 3 Base Game
	["poison-capsule"] = 
	{
		Tech = "military-3", 
		Points = 40, 
		Hour = 4, 
		Minute = 30, 
		Event = 901, 
		Tier = 3,
		Locale = "item"
	},
	["slowdown-capsule"] = 
	{
		Tech = "military-3", 
		Points = 40, 
		Hour = 4, 
		Minute = 30, 
		Event = 902, 
		Tier = 3,
		Locale = "item"
	},
	["combat-shotgun"] = 
	{
		Tech = "military-3", 
		Points = 120, 
		Hour = 4, 
		Minute = 30, 
		Event = 903, 
		Tier = 3,
		Locale = "item"
	},
	["assembling-machine-3"] = 
	{
		Tech = "automation-3", 
		Points = 250, 
		Hour = 4, 
		Minute = 45, 
		Event = 904, 
		Tier = 3,
		Locale = "entity"
	},
	["tank"] = 
	{
		Tech = "tanks", 
		Points = 100, 
		Hour = 5, 
		Minute = 30, 
		Event = 905, 
		Tier = 3,
		Locale = "entity"
	},
	["cannon-shell"] = 
	{
		Tech = "tanks", 
		Points = 20, 
		Hour = 5, 
		Minute = 30, 
		Event = 906, 
		Tier = 3,
		Locale = "item"
	},
	["express-transport-belt"] = 
	{
		Tech = "logistics-3", 
		Points = 150, 
		Hour = 6, 
		Minute = 30, 
		Event = 907, 
		Tier = 3,
		Locale = "entity"
	},
	["express-transport-belt-to-ground"] = 
	{
		Tech = "logistics-3", 
		Points = 75, 
		Hour = 6, 
		Minute = 30, 
		Event = 908, 
		Tier = 3,
		Locale = "entity"
	},
	["express-splitter"] = 
	{
		Tech = "logistics-3", 
		Points = 75, 
		Hour = 6, 
		Minute = 30, 
		Event = 909, 
		Tier = 3,
		Locale = "entity"
	},
	["explosive-rocket"] = 
	{
		Tech = "explosive-rocketry", 
		Points = 250, 
		Hour = 7, 
		Minute = 30, 
		Event = 910, 
		Tier = 3,
		Locale = "item"
	},
	["power-armor"] = 
	{
		Tech = "power-armor", 
		Points = 300, 
		Hour = 8, 
		Minute = 30, 
		Event = 911, 
		Tier = 3,
		Locale = "item"
	},
	["basic-beacon"] = 
	{
		Tech = "effect-transmission", 
		Points = 250, 
		Hour = 10, 
		Minute = 0, 
		Event = 912, 
		Tier = 3,
		Locale = "entity"
	},
	["speed-module-2"] = 
	{
		Tech = "speed-module-2", 
		Points = 200, 
		Hour = 5, 
		Minute = 30, 
		Event = 913, 
		Tier = 3,
		Locale = "item"
	},
	["effectivity-module-2"] = 
	{
		Tech = "effectivity-module-2", 
		Points = 200, 
		Hour = 5, 
		Minute = 30, 
		Event = 914, 
		Tier = 3,
		Locale = "item"
	},
	["productivity-module-2"] = 
	{
		Tech = "productivity-module-2", 
		Points = 200, 
		Hour = 5, 
		Minute = 30, 
		Event = 915, 
		Tier = 3,
		Locale = "item"
	},
	["logistic-chest-active-provider"] = 
	{
		Tech = "logistic-system", 
		Points = 200, 
		Hour = 4, 
		Minute = 30, 
		Event = 916, 
		Tier = 3,
		Locale = "entity"
	},
	["logistic-chest-requester"] = 
	{
		Tech = "logistic-system", 
		Points = 250, 
		Hour = 4, 
		Minute = 30, 
		Event = 917, 
		Tier = 3,
		Locale = "entity"
	},
	["energy-shield-mk2-equipment"] = 
	{
		Tech = "energy-shield-mk2-equipment", 
		Points = 300, 
		Hour = 9, 
		Minute = 30, 
		Event = 918, 
		Tier = 3,
		Locale = "equipment"
	},
	["battery-mk2-equipment"] = 
	{
		Tech = "battery-mk2-equipment", 
		Points = 300, 
		Hour = 9, 
		Minute = 30, 
		Event = 919, 
		Tier = 3,
		Locale = "equipment"
	},
	["basic-laser-defense-equipment"] = 
	{
		Tech = "basic-laser-defense-equipment", 
		Points = 300, 
		Hour = 9, 
		Minute = 30, 
		Event = 920, 
		Tier = 3,
		Locale = "equipment"
	},
	["fusion-reactor-equipment"] = 
	{
		Tech = "fusion-reactor-equipment", 
		Points = 300, 
		Hour = 9, 
		Minute = 30, 
		Event = 921, 
		Tier = 3,
		Locale = "equipment"
	},
	["basic-exoskeleton-equipment"] = 
	{
		Tech = "basic-exoskeleton-equipment", 
		Points = 300, 
		Hour = 9, 
		Minute = 30, 
		Event = 922, 
		Tier = 3,
		Locale = "equipment"
	},
	["advanced-oil-processing"] = 
	{
		Tech = "advanced-oil-processing", 
		Points = 75, 
		Hour = 8, 
		Minute = 30, 
		Event = 923, 
		Tier = 3,
		Locale = "recipe"
	},
	["heavy-oil-cracking"] = 
	{
		Tech = "advanced-oil-processing", 
		Points = 75, 
		Hour = 8, 
		Minute = 30, 
		Event = 924, 
		Tier = 3,
		Locale = "recipe"
	},
	["light-oil-cracking"] = 
	{
		Tech = "advanced-oil-processing", 
		Points = 75, 
		Hour = 8, 
		Minute = 30, 
		Event = 925, 
		Tier = 3,
		Locale = "recipe"
	},
	["substation"] = 
	{
		Tech = "electric-energy-distribution-2", 
		Points = 250, 
		Hour = 6, 
		Minute = 30, 
		Event = 926, 
		Tier = 3,
		Locale = "entity"
	},
	["distractor-capsule"] = 
	{
		Tech = "combat-robotics-2", 
		Points = 500, 
		Hour = 7, 
		Minute = 0, 
		Event = 927, 
		Tier = 3,
		Locale = "item"
	},
	-- Tier 4 Base Game
	["rocket-defense"] = 
	{
		Tech = "rocket-defense", 
		Points = 5000, 
		Hour = 20, 
		Minute = 0, 
		Event = 1351, 
		Tier = 4,
		Locale = "entity"
	},
	["power-armor-mk2"] = 
	{
		Tech = "power-armor-2", 
		Points = 850, 
		Hour = 10, 
		Minute = 0, 
		Event = 1352, 
		Tier = 4,
		Locale = "item"
	},
	["piercing-shotgun-shell"] = 
	{
		Tech = "military-4", 
		Points = 500, 
		Hour = 10, 
		Minute = 30, 
		Event = 1353, 
		Tier = 4,
		Locale = "item"
	},
	["speed-module-3"] = 
	{
		Tech = "speed-module-3", 
		Points = 1000, 
		Hour = 10, 
		Minute = 0, 
		Event = 1354, 
		Tier = 4,
		Locale = "item"
	},
	["productivity-module-3"] = 
	{
		Tech = "productivity-module-3", 
		Points = 1000, 
		Hour = 10, 
		Minute = 0, 
		Event = 1355, 
		Tier = 4,
		Locale = "item"
	},
	["effectivity-module-3"] = 
	{
		Tech = "effectivity-module-3", 
		Points = 1000, 
		Hour = 10, 
		Minute = 0, 
		Event = 1356, 
		Tier = 4,
		Locale = "item"
	},
	["basic-electric-discharge-defense-equipment"] = 
	{
		Tech = "basic-electric-discharge-defense-equipment", 
		Points = 1000, 
		Hour = 10, 
		Minute = 0, 
		Event = 1357, 
		Tier = 4,
		Locale = "equipment"
	},
	["basic-electric-discharge-defense-remote"] = 
	{
		Tech = "basic-electric-discharge-defense-equipment", 
		Points = 1000, 
		Hour = 10, 
		Minute = 0, 
		Event = 1358, 
		Tier = 4,
		Locale = "item"
	},
	["destroyer-capsule"] = 
	{
		Tech = "combat-robotics-3", 
		Points = 1200, 
		Hour = 10, 
		Minute = 0, 
		Event = 1359, 
		Tier = 4,
		Locale = "item"
	},
}