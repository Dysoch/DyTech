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
	-- Base Game
	["iron-gear-wheel"] = 
	{
		Tech = "automation", 
		Points = 2,  
		Locale = "item",
	},
	["long-handed-inserter"] = 
	{
		Tech = "automation", 
		Points = 3, 
		Locale = "entity"
	},
	["assembling-machine-1"] = 
	{
		Tech = "automation", 
		Points = 5, 
		Locale = "entity"
	},
	["steel-plate"] = 
	{
		Tech = "steel-processing", 
		Points = 7, 
		Locale = "item"
	},
	["steel-chest"] = 
	{
		Tech = "steel-processing", 
		Points = 7, 
		Locale = "entity"
	},
	["steel-axe"] = 
	{
		Tech = "steel-processing", 
		Points = 6, 
		Locale = "item"
	},
	["submachine-gun"] = 
	{
		Tech = "military", 
		Points = 4, 
		Locale = "item"
	},
	["shotgun"] = 
	{
		Tech = "military", 
		Points = 4, 
		Locale = "item"
	},
	["shotgun-shell"] = 
	{
		Tech = "military", 
		Points = 2, 
		Locale = "item"
	},
	["gun-turret"] = 
	{
		Tech = "turrets", 
		Points = 10, 
		Locale = "entity"
	},
	["stone-wall"] = 
	{
		Tech = "stone-walls", 
		Points = 10, 
		Locale = "entity"
	},
	["smart-inserter"] = 
	{
		Tech = "electronics", 
		Points = 25, 
		Locale = "entity"
	},
	["assembling-machine-2"] = 
	{
		Tech = "automation-2", 
		Points = 75, 
		Locale = "entity"
	},
	["basic-transport-belt-to-ground"] = 
	{
		Tech = "logistics", 
		Points = 10, 
		Locale = "entity"
	},
	["fast-inserter"] = 
	{
		Tech = "logistics", 
		Points = 10, 
		Locale = "entity"
	},
	["basic-splitter"] = 
	{
		Tech = "logistics", 
		Points = 10, 
		Locale = "entity"
	},
	["basic-armor"] = 
	{
		Tech = "armor-making", 
		Points = 10, 
		Locale = "item"
	},
	["heavy-armor"] = 
	{
		Tech = "armor-making-2", 
		Points = 25, 
		Locale = "item"
	},
	["small-lamp"] = 
	{
		Tech = "optics", 
		Points = 5, 
		Locale = "entity"
	},
	["piercing-bullet-magazine"] = 
	{
		Tech = "military-2", 
		Points = 15, 
		Locale = "item"
	},
	["basic-grenade"] = 
	{
		Tech = "military-2", 
		Points = 20, 
		Locale = "item"
	},
	["explosives"] = 
	{
		Tech = "explosives", 
		Points = 110,
		Locale = "item"
	},
	["land-mine"] = 
	{
		Tech = "land-mine", 
		Points = 35,
		Locale = "entity"
	},
	["flame-thrower"] = 
	{
		Tech = "flame-thrower", 
		Points = 35,
		Locale = "item"
	},
	["flame-thrower-ammo"] = 
	{
		Tech = "flame-thrower", 
		Points = 5,
		Locale = "item"
	},
	["processing-unit"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Locale = "item"
	},
	["advanced-circuit"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Locale = "item"
	},
	["green-wire"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Locale = "item"
	},
	["red-wire"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Locale = "item"
	},
	["smart-chest"] = 
	{
		Tech = "advanced-electronics", 
		Points = 8, 
		Locale = "entity"
	},
	["diesel-locomotive"] = 
	{
		Tech = "railway", 
		Points = 65,
		Locale = "entity"
	},
	["curved-rail"] = 
	{
		Tech = "railway", 
		Points = 65,
		Locale = "entity"
	},
	["straight-rail"] = 
	{
		Tech = "railway", 
		Points = 65,
		Locale = "entity"
	},
	["train-stop"] = 
	{
		Tech = "automated-rail-transportation", 
		Points = 100,
		Locale = "entity"
	},
	["cargo-wagon"] = 
	{
		Tech = "automated-rail-transportation", 
		Points = 100,
		Locale = "entity"
	},
	["rail-signal"] = 
	{
		Tech = "rail-signals", 
		Points = 400, 
		Locale = "entity"
	},
	["car"] = 
	{
		Tech = "automobilism", 
		Points = 250, 
		Locale = "entity"
	},
	["fast-transport-belt"] = 
	{
		Tech = "logistics-2", 
		Points = 20, 
		Locale = "entity"
	},
	["fast-transport-belt-to-ground"] = 
	{
		Tech = "logistics-2", 
		Points = 20, 
		Locale = "entity"
	},
	["fast-splitter"] = 
	{
		Tech = "logistics-2", 
		Points = 20, 
		Locale = "entity"
	},
	["solar-panel"] = 
	{
		Tech = "solar-energy", 
		Points = 180,
		Locale = "entity"
	},
	["rocket-launcher"] = 
	{
		Tech = "rocketry", 
		Points = 180, 
		Locale = "item"
	},
	["rocket"] = 
	{
		Tech = "rocketry", 
		Points = 180, 
		Locale = "item"
	},
	["basic-modular-armor"] = 
	{
		Tech = "armor-making-3", 
		Points = 180,
		Locale = "item"
	},
	["laser-turret"] = 
	{
		Tech = "laser-turrets", 
		Points = 180, 
		Locale = "entity"
	},
	["gate"] = 
	{
		Tech = "gates", 
		Points = 200, 
		Locale = "entity"
	},
	["flying-robot-frame"] = 
	{
		Tech = "robotics", 
		Points = 180,
		Locale = "item"
	},
	["alien-science-pack"] = 
	{
		Tech = "alien-technology", 
		Points = 300, 
		Locale = "item"
	},
	["medium-electric-pole"] = 
	{
		Tech = "electric-energy-distribution-1", 
		Points = 40, 
		Locale = "entity"
	},
	["big-electric-pole"] = 
	{
		Tech = "electric-energy-distribution-1", 
		Points = 60, 
		Locale = "entity"
	},
	["basic-accumulator"] = 
	{
		Tech = "electric-energy-accumulators-1", 
		Points = 110,
		Locale = "entity"
	},
	["steel-furnace"] = 
	{
		Tech = "advanced-material-processing", 
		Points = 90,
		Locale = "entity"
	},
	["electric-furnace"] = 
	{
		Tech = "advanced-material-processing-2", 
		Points = 195, 
		Locale = "entity"
	},
	["engine-unit"] = 
	{
		Tech = "engine", 
		Points = 85, 
		Locale = "item"
	},
	["electric-engine-unit"] = 
	{
		Tech = "electric-engine", 
		Points = 90,
		Locale = "item"
	},
	["battery"] = 
	{
		Tech = "battery", 
		Points = 20, 
		Locale = "item"
	},
	["science-pack-3"] = 
	{
		Tech = "battery", 
		Points = 80, 
		Locale = "item"
	},
	["speed-module"] = 
	{
		Tech = "speed-module", 
		Points = 100,
		Locale = "item"
	},
	["effectivity-module"] = 
	{
		Tech = "effectivity-module", 
		Points = 100,
		Locale = "item"
	},
	["productivity-module"] = 
	{
		Tech = "productivity-module", 
		Points = 100,
		Locale = "item"
	},
	["roboport"] = 
	{
		Tech = "construction-robotics", 
		Points = 150,
		Locale = "entity"
	},
	["logistic-chest-passive-provider"] = 
	{
		Tech = "construction-robotics", 
		Points = 25,
		Locale = "entity"
	},
	["logistic-chest-storage"] = 
	{
		Tech = "construction-robotics", 
		Points = 25,
		Locale = "entity"
	},
	["construction-robot"] = 
	{
		Tech = "construction-robotics", 
		Points = 100,
		Locale = "entity"
	},
	["blueprint"] = 
	{
		Tech = "automated-construction", 
		Points = 75, 
		Locale = "item"
	},
	["deconstruction-planner"] = 
	{
		Tech = "automated-construction", 
		Points = 75, 
		Locale = "item"
	},
	["logistic-robot"] = 
	{
		Tech = "logistic-robotics", 
		Points = 100, 
		Locale = "entity"
	},
	["energy-shield-equipment"] = 
	{
		Tech = "energy-shield-equipment", 
		Points = 75,
		Locale = "equipment"
	},
	["night-vision-equipment"] = 
	{
		Tech = "night-vision-equipment", 
		Points = 75,
		Locale = "equipment"
	},
	["battery-equipment"] = 
	{
		Tech = "battery-equipment", 
		Points = 75,
		Locale = "equipment"
	},
	["solar-panel-equipment"] = 
	{
		Tech = "solar-panel-equipment", 
		Points = 75,
		Locale = "equipment"
	},
	["storage-tank"] = 
	{
		Tech = "fluid-handling", 
		Points = 50,
		Locale = "entity"
	},
	["small-pump"] = 
	{
		Tech = "fluid-handling", 
		Points = 40, 
		Locale = "entity"
	},
	["empty-barrel"] = 
	{
		Tech = "fluid-handling", 
		Points = 25,
		Locale = "item"
	},
	["pumpjack"] = 
	{
		Tech = "oil-processing", 
		Points = 20,
		Locale = "entity"
	},
	["oil-refinery"] = 
	{
		Tech = "oil-processing", 
		Points = 50,
		Locale = "entity"
	},
	["chemical-plant"] = 
	{
		Tech = "oil-processing", 
		Points = 50,
		Locale = "entity"
	},
	["sulfur"] = 
	{
		Tech = "sulfur-processing", 
		Points = 75,
		Locale = "item"
	},
	["plastic-bar"] = 
	{
		Tech = "plastics", 
		Points = 150,
		Locale = "item"
	},
	["defender-capsule"] = 
	{
		Tech = "combat-robotics", 
		Points = 300, 
		Locale = "item"
	},
	["poison-capsule"] = 
	{
		Tech = "military-3", 
		Points = 40,
		Locale = "item"
	},
	["slowdown-capsule"] = 
	{
		Tech = "military-3", 
		Points = 40,
		Locale = "item"
	},
	["combat-shotgun"] = 
	{
		Tech = "military-3", 
		Points = 120,
		Locale = "item"
	},
	["assembling-machine-3"] = 
	{
		Tech = "automation-3", 
		Points = 250,
		Locale = "entity"
	},
	["tank"] = 
	{
		Tech = "tanks", 
		Points = 100, 
		Locale = "entity"
	},
	["cannon-shell"] = 
	{
		Tech = "tanks", 
		Points = 20, 
		Locale = "item"
	},
	["express-transport-belt"] = 
	{
		Tech = "logistics-3", 
		Points = 150,
		Locale = "entity"
	},
	["express-transport-belt-to-ground"] = 
	{
		Tech = "logistics-3", 
		Points = 75,
		Locale = "entity"
	},
	["express-splitter"] = 
	{
		Tech = "logistics-3", 
		Points = 75,
		Locale = "entity"
	},
	["explosive-rocket"] = 
	{
		Tech = "explosive-rocketry", 
		Points = 250,
		Locale = "item"
	},
	["power-armor"] = 
	{
		Tech = "power-armor", 
		Points = 300,
		Locale = "item"
	},
	["basic-beacon"] = 
	{
		Tech = "effect-transmission", 
		Points = 250, 
		Locale = "entity"
	},
	["speed-module-2"] = 
	{
		Tech = "speed-module-2", 
		Points = 200, 
		Locale = "item"
	},
	["effectivity-module-2"] = 
	{
		Tech = "effectivity-module-2", 
		Points = 200, 
		Locale = "item"
	},
	["productivity-module-2"] = 
	{
		Tech = "productivity-module-2", 
		Points = 200, 
		Locale = "item"
	},
	["logistic-chest-active-provider"] = 
	{
		Tech = "logistic-system", 
		Points = 200,
		Locale = "entity"
	},
	["logistic-chest-requester"] = 
	{
		Tech = "logistic-system", 
		Points = 250,
		Locale = "entity"
	},
	["energy-shield-mk2-equipment"] = 
	{
		Tech = "energy-shield-mk2-equipment", 
		Points = 300, 
		Locale = "equipment"
	},
	["battery-mk2-equipment"] = 
	{
		Tech = "battery-mk2-equipment", 
		Points = 300, 
		Locale = "equipment"
	},
	["basic-laser-defense-equipment"] = 
	{
		Tech = "basic-laser-defense-equipment", 
		Points = 300, 
		Locale = "equipment"
	},
	["fusion-reactor-equipment"] = 
	{
		Tech = "fusion-reactor-equipment", 
		Points = 300, 
		Locale = "equipment"
	},
	["basic-exoskeleton-equipment"] = 
	{
		Tech = "basic-exoskeleton-equipment", 
		Points = 300, 
		Locale = "equipment"
	},
	["substation"] = 
	{
		Tech = "electric-energy-distribution-2", 
		Points = 250,
		Locale = "entity"
	},
	["distractor-capsule"] = 
	{
		Tech = "combat-robotics-2", 
		Points = 500,
		Locale = "item"
	},
	["power-armor-mk2"] = 
	{
		Tech = "power-armor-2", 
		Points = 850, 
		Locale = "item"
	},
	["piercing-shotgun-shell"] = 
	{
		Tech = "military-4", 
		Points = 500, 
		Locale = "item"
	},
	["speed-module-3"] = 
	{
		Tech = "speed-module-3", 
		Points = 1000, 
		Locale = "item"
	},
	["productivity-module-3"] = 
	{
		Tech = "productivity-module-3", 
		Points = 1000, 
		Locale = "item"
	},
	["effectivity-module-3"] = 
	{
		Tech = "effectivity-module-3", 
		Points = 1000, 
		Locale = "item"
	},
	["basic-electric-discharge-defense-equipment"] = 
	{
		Tech = "basic-electric-discharge-defense-equipment", 
		Points = 1000, 
		Locale = "equipment"
	},
	["basic-electric-discharge-defense-remote"] = 
	{
		Tech = "basic-electric-discharge-defense-equipment", 
		Points = 1000, 
		Locale = "item"
	},
	["destroyer-capsule"] = 
	{
		Tech = "combat-robotics-3", 
		Points = 1200, 
		Locale = "item"
	},
	["destroyer-capsule"] = 
	{
		Tech = "combat-robotics-3", 
		Points = 1200, 
		Locale = "item"
	},
	-- DyTech-Core --
	["bundled-wire"] = 
	{
		Tech = "advanced-cables", 
		Points = 150, 
		Locale = "item"
	},
	["advanced-processing-unit"] = 
	{
		Tech = "advanced-processing-unit", 
		Points = 250, 
		Locale = "item"
	},
	["logic-diamond"] = 
	{
		Tech = "logic-diamond-processor", 
		Points = 500, 
		Locale = "item"
	},
	["logic-diamond-processor"] = 
	{
		Tech = "logic-diamond-processor", 
		Points = 500, 
		Locale = "item"
	},
	["frame-2"] = 
	{
		Tech = "frame-1", 
		Points = 60, 
		Locale = "item"
	},
	["frame-3"] = 
	{
		Tech = "frame-2", 
		Points = 110, 
		Locale = "item"
	},
	["frame-4"] = 
	{
		Tech = "frame-3", 
		Points = 280, 
		Locale = "item"
	},
	["item-exit-2"] = 
	{
		Tech = "item-exit-1", 
		Points = 80, 
		Locale = "item"
	},
	["item-exit-3"] = 
	{
		Tech = "item-exit-2", 
		Points = 160, 
		Locale = "item"
	},
	["item-exit-4"] = 
	{
		Tech = "item-exit-3", 
		Points = 300, 
		Locale = "item"
	},
	["rotor-2"] = 
	{
		Tech = "rotor-1", 
		Points = 50, 
		Locale = "item"
	},
	["blade-2"] = 
	{
		Tech = "rotor-1", 
		Points = 25, 
		Locale = "item"
	},
	["rotor-3"] = 
	{
		Tech = "rotor-2", 
		Points = 80, 
		Locale = "item"
	},
	["blade-3"] = 
	{
		Tech = "rotor-2", 
		Points = 60, 
		Locale = "item"
	},
	["rotor-4"] = 
	{
		Tech = "rotor-3", 
		Points = 195, 
		Locale = "item"
	},
	["zinc-plate"] = 
	{
		Tech = "zinc-processing", 
		Points = 20, 
		Locale = "item"
	},
	["zinc-gear-wheel"] = 
	{
		Tech = "zinc-processing", 
		Points = 30, 
		Locale = "item"
	},
	["tin-plate"] = 
	{
		Tech = "tin-processing", 
		Points = 20, 
		Locale = "item"
	},
	["tin-gear-wheel"] = 
	{
		Tech = "tin-processing", 
		Points = 30, 
		Locale = "item"
	},
	["lead-plate"] = 
	{
		Tech = "lead-processing", 
		Points = 65, 
		Locale = "item"
	},
	["lead-gear-wheel"] = 
	{
		Tech = "lead-processing", 
		Points = 85, 
		Locale = "item"
	},
	["silver-plate"] = 
	{
		Tech = "silver-processing", 
		Points = 120, 
		Locale = "item"
	},
	["gold-plate"] = 
	{
		Tech = "gold-processing", 
		Points = 120, 
		Locale = "item"
	},
	["tungsten-plate"] = 
	{
		Tech = "tungsten-processing", 
		Points = 100, 
		Locale = "item"
	},
	["tungsten-gear-wheel"] = 
	{
		Tech = "tungsten-processing", 
		Points = 150, 
		Locale = "item"
	},
	["cobalt-plate"] = 
	{
		Tech = "cobalt-processing", 
		Points = 180, 
		Locale = "item"
	},
	["cobalt-gear-wheel"] = 
	{
		Tech = "cobalt-processing", 
		Points = 70, 
		Locale = "item"
	},
	["ardite-plate"] = 
	{
		Tech = "ardite-processing", 
		Points = 180, 
		Locale = "item"
	},
	["capacitor-1"] = 
	{
		Tech = "capacitor-1", 
		Points = 25, 
		Locale = "item"
	},
	["flux-capacitor-1"] = 
	{
		Tech = "capacitor-1", 
		Points = 50, 
		Locale = "item"
	},
	["capacitor-2"] = 
	{
		Tech = "capacitor-2", 
		Points = 45, 
		Locale = "item"
	},
	["flux-capacitor-2"] = 
	{
		Tech = "capacitor-2", 
		Points = 80, 
		Locale = "item"
	},
	["capacitor-3"] = 
	{
		Tech = "capacitor-3", 
		Points = 70, 
		Locale = "item"
	},
	["flux-capacitor-3"] = 
	{
		Tech = "capacitor-3", 
		Points = 105, 
		Locale = "item"
	},
	["capacitor-4"] = 
	{
		Tech = "capacitor-4", 
		Points = 90, 
		Locale = "item"
	},
	["flux-capacitor-4"] = 
	{
		Tech = "capacitor-4", 
		Points = 160, 
		Locale = "item"
	},
	["compressor"] = 
	{
		Tech = "gem-processing", 
		Points = 90,
		Locale = "entity"
	},
	["liquid-handler"] = 
	{
		Tech = "water-cleaning", 
		Points = 45,
		Locale = "entity"
	},
	["centrifuge"] = 
	{
		Tech = "centrifuge", 
		Points = 50,
		Locale = "entity"
	},
	-- DyTech-War --
	["sandwall"] = 
	{
		Tech = "sand-wall", 
		Points = 30,
		Locale = "entity"
	},
	["sand-wall-gate"] = 
	{
		Tech = "sand-wall", 
		Points = 50,
		Locale = "entity"
	},
	["chitin-wall"] = 
	{
		Tech = "chitin-wall", 
		Points = 60,
		Locale = "entity"
	},
	["tungsten-wall-gate"] = 
	{
		Tech = "tungsten-processing", 
		Points = 75,
		Locale = "entity"
	},
	["power-armor-mk3"] = 
	{
		Tech = "power-armor-3", 
		Points = 1500,
		Locale = "item"
	},
	["power-armor-mk4"] = 
	{
		Tech = "power-armor-4", 
		Points = 2000,
		Locale = "item"
	},
	["power-armor-mk5"] = 
	{
		Tech = "power-armor-5", 
		Points = 2500,
		Locale = "item"
	},
	["power-armor-mk6"] = 
	{
		Tech = "power-armor-6", 
		Points = 3000,
		Locale = "item"
	},
	["power-armor-mk7"] = 
	{
		Tech = "power-armor-7", 
		Points = 4000,
		Locale = "item"
	},
	["acid-capsule-1"] = 
	{
		Tech = "acid-capsule-1", 
		Points = 125,
		Locale = "item"
	},
	["acid-capsule-2"] = 
	{
		Tech = "acid-capsule-2", 
		Points = 300,
		Locale = "item"
	},
	["acid-capsule-3"] = 
	{
		Tech = "acid-capsule-3", 
		Points = 650,
		Locale = "item"
	},
	["firestorm-capsule-1"] = 
	{
		Tech = "firestorm-capsule-1", 
		Points = 1250,
		Locale = "item"
	},
	["firestorm-capsule-2"] = 
	{
		Tech = "firestorm-capsule-2", 
		Points = 3000,
		Locale = "item"
	},
	["firestorm-capsule-3"] = 
	{
		Tech = "firestorm-capsule-3", 
		Points = 6500,
		Locale = "item"
	},
	["basic-grenade-2"] = 
	{
		Tech = "military-3", 
		Points = 150,
		Locale = "item"
	},
	["basic-grenade-2"] = 
	{
		Tech = "military-3", 
		Points = 250,
		Locale = "item"
	},
	["napalm-capsule-1"] = 
	{
		Tech = "napalm-capsule-1", 
		Points = 125,
		Locale = "item"
	},
	["napalm-capsule-2"] = 
	{
		Tech = "napalm-capsule-2", 
		Points = 300,
		Locale = "item"
	},
	["napalm-capsule-3"] = 
	{
		Tech = "napalm-capsule-3", 
		Points = 650,
		Locale = "item"
	},
	["poison-capsule-1"] = 
	{
		Tech = "poison-capsule-1", 
		Points = 125,
		Locale = "item"
	},
	["poison-capsule-2"] = 
	{
		Tech = "poison-capsule-2", 
		Points = 300,
		Locale = "item"
	},
	["slowdown-capsule-1"] = 
	{
		Tech = "slowdown-capsule-1", 
		Points = 125,
		Locale = "item"
	},
	["slowdown-capsule-2"] = 
	{
		Tech = "slowdown-capsule-2", 
		Points = 300,
		Locale = "item"
	},
	["radiation-capsule-1"] = 
	{
		Tech = "radiation-capsule-1", 
		Points = 125,
		Locale = "item"
	},
	["radiation-capsule-2"] = 
	{
		Tech = "radiation-capsule-2", 
		Points = 300,
		Locale = "item"
	},
	["radiation-capsule-3"] = 
	{
		Tech = "radiation-capsule-3", 
		Points = 650,
		Locale = "item"
	},
	["marauder-capsule"] = 
	{
		Tech = "combat-robotics-4", 
		Points = 200,
		Locale = "item"
	},
	["marauder-turret-capsule"] = 
	{
		Tech = "combat-robotics-4", 
		Points = 200,
		Locale = "item"
	},
	["sharpshooter-capsule"] = 
	{
		Tech = "combat-robotics-5", 
		Points = 400,
		Locale = "item"
	},
	["sharpshooter-turret-capsule"] = 
	{
		Tech = "combat-robotics-5", 
		Points = 400,
		Locale = "item"
	},
	["frenzy-capsule"] = 
	{
		Tech = "combat-robotics-6", 
		Points = 625,
		Locale = "item"
	},
	["frenzy-turret-capsule"] = 
	{
		Tech = "combat-robotics-6", 
		Points = 625,
		Locale = "item"
	},
	["mixed-capsule"] = 
	{
		Tech = "combat-robotics-6", 
		Points = 625,
		Locale = "item"
	},
	["mixed-turret-capsule"] = 
	{
		Tech = "combat-robotics-6", 
		Points = 625,
		Locale = "item"
	},
	["basic-laser-defense-equipment-2"] = 
	{
		Tech = "basic-laser-defense-equipment-1", 
		Points = 300,
		Locale = "equipment"
	},
	["basic-laser-defense-equipment-3"] = 
	{
		Tech = "basic-laser-defense-equipment-2", 
		Points = 875,
		Locale = "equipment"
	},
	["energy-shield-mk3-equipment"] = 
	{
		Tech = "energy-shield-mk3-equipment", 
		Points = 200,
		Locale = "equipment"
	},
	["energy-shield-mk4-equipment"] = 
	{
		Tech = "energy-shield-mk4-equipment", 
		Points = 400,
		Locale = "equipment"
	},
	["energy-shield-mk5-equipment"] = 
	{
		Tech = "energy-shield-mk5-equipment", 
		Points = 750,
		Locale = "equipment"
	},
	["battery-mk3-equipment"] = 
	{
		Tech = "battery-mk3-equipment", 
		Points = 200,
		Locale = "equipment"
	},
	["battery-mk4-equipment"] = 
	{
		Tech = "battery-mk4-equipment", 
		Points = 400,
		Locale = "equipment"
	},
	["battery-mk5-equipment"] = 
	{
		Tech = "battery-mk5-equipment", 
		Points = 750,
		Locale = "equipment"
	},
	["solar-panel-equipment-2"] = 
	{
		Tech = "solar-panel-equipment-2", 
		Points = 100,
		Locale = "equipment"
	},
	["solar-panel-equipment-3"] = 
	{
		Tech = "solar-panel-equipment-3", 
		Points = 190,
		Locale = "equipment"
	},
	["solar-panel-equipment-4"] = 
	{
		Tech = "solar-panel-equipment-4", 
		Points = 450,
		Locale = "equipment"
	},
	["solar-panel-equipment-5"] = 
	{
		Tech = "solar-panel-equipment-5", 
		Points = 950,
		Locale = "equipment"
	},
	["personal-roboport-equipment-1"] = 
	{
		Tech = "personal-roboport-equipment-1", 
		Points = 250,
		Locale = "equipment"
	},
	["personal-roboport-equipment-2"] = 
	{
		Tech = "personal-roboport-equipment-2", 
		Points = 500,
		Locale = "equipment"
	},
	["sniper"] = 
	{
		Tech = "military-5", 
		Points = 300,
		Locale = "item"
	},
	["laser-gun"] = 
	{
		Tech = "military-6", 
		Points = 300,
		Locale = "item"
	},
	["laser-clip-1"] = 
	{
		Tech = "military-6", 
		Points = 75,
		Locale = "item"
	},
	["laser-clip-2"] = 
	{
		Tech = "military-6", 
		Points = 75,
		Locale = "item"
	},
	["laser-clip-3"] = 
	{
		Tech = "military-6", 
		Points = 75,
		Locale = "item"
	},
	["laser-shotgun"] = 
	{
		Tech = "military-7", 
		Points = 600,
		Locale = "item"
	},
	["laser-clip-shotgun-1"] = 
	{
		Tech = "military-7", 
		Points = 75,
		Locale = "item"
	},
	["laser-clip-shotgun-2"] = 
	{
		Tech = "military-7", 
		Points = 75,
		Locale = "item"
	},
	["laser-clip-shotgun-3"] = 
	{
		Tech = "military-7", 
		Points = 75,
		Locale = "item"
	},
	["tank-dytech-1"] = 
	{
		Tech = "tanks-2", 
		Points = 400,
		Locale = "entity"
	},
	["battery-tank"] = 
	{
		Tech = "tanks-2", 
		Points = 100,
		Locale = "item"
	},
	["tank-dytech-2"] = 
	{
		Tech = "tanks-3", 
		Points = 800,
		Locale = "entity"
	},
	["flame-thrower-turret"] = 
	{
		Tech = "flame-thrower-turret", 
		Points = 20,
		Locale = "entity"
	},
	["sniper-turret"] = 
	{
		Tech = "military-8", 
		Points = 500,
		Locale = "entity"
	},
	["gun-turret-1"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-2"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-3"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-4"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-5"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-6"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-7"] = 
	{
		Tech = "turrets-1", 
		Points = 50,
		Locale = "entity"
	},
	["gun-turret-1-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["gun-turret-2-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["gun-turret-3-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["gun-turret-4-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["gun-turret-5-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["gun-turret-6-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["gun-turret-7-armored"] = 
	{
		Tech = "turrets-2", 
		Points = 150,
		Locale = "entity"
	},
	["laser-turret-2"] = 
	{
		Tech = "laser-turrets", 
		Points = 50,
		Locale = "entity"
	},
	["laser-turret-3"] = 
	{
		Tech = "laser-turrets", 
		Points = 100,
		Locale = "entity"
	},
	["laser-turret-4"] = 
	{
		Tech = "laser-turrets-1", 
		Points = 150,
		Locale = "entity"
	},
	["laser-turret-5"] = 
	{
		Tech = "laser-turrets-1", 
		Points = 200,
		Locale = "entity"
	},
	["laser-turret-6"] = 
	{
		Tech = "laser-turrets-1", 
		Points = 250,
		Locale = "entity"
	},
	["laser-turret-7"] = 
	{
		Tech = "laser-turrets-2", 
		Points = 300,
		Locale = "entity"
	},
	["laser-turret-8"] = 
	{
		Tech = "laser-turrets-2", 
		Points = 350,
		Locale = "entity"
	},
	["laser-turret-9"] = 
	{
		Tech = "laser-turrets-2", 
		Points = 400,
		Locale = "entity"
	},
	["laser-turret-sniper-1"] = 
	{
		Tech = "laser-turrets-3", 
		Points = 450,
		Locale = "entity"
	},
	["laser-turret-sniper-2"] = 
	{
		Tech = "laser-turrets-3", 
		Points = 550,
		Locale = "entity"
	},
	["laser-turret-sniper-3"] = 
	{
		Tech = "laser-turrets-3", 
		Points = 650,
		Locale = "entity"
	},
	["laser-turret-diamond-1"] = 
	{
		Tech = "laser-turrets-4", 
		Points = 2500,
		Locale = "entity"
	},
	["laser-turret-diamond-2"] = 
	{
		Tech = "laser-turrets-4", 
		Points = 3500,
		Locale = "entity"
	},
	["laser-turret-diamond-3"] = 
	{
		Tech = "laser-turrets-4", 
		Points = 5000,
		Locale = "entity"
	},
	-- DyTech-Machine --
	["super-transport-belt"] = 
	{
		Tech = "logistics-4", 
		Points = 150,
		Locale = "entity"
	},
	["super-transport-belt-to-ground"] = 
	{
		Tech = "logistics-4", 
		Points = 150,
		Locale = "entity"
	},
	["super-splitter"] = 
	{
		Tech = "logistics-4", 
		Points = 150,
		Locale = "entity"
	},
	["extreme-transport-belt"] = 
	{
		Tech = "logistics-5", 
		Points = 150,
		Locale = "entity"
	},
	["extreme-transport-belt-to-ground"] = 
	{
		Tech = "logistics-5", 
		Points = 150,
		Locale = "entity"
	},
	["extreme-splitter"] = 
	{
		Tech = "logistics-5", 
		Points = 150,
		Locale = "entity"
	},
	["cargo-wagon-armor"] = 
	{
		Tech = "railway-1", 
		Points = 125,
		Locale = "entity"
	},
	["diesel-locomotive-armor"] = 
	{
		Tech = "railway-1", 
		Points = 125,
		Locale = "entity"
	},
	["cargo-wagon-fast"] = 
	{
		Tech = "railway-2", 
		Points = 125,
		Locale = "entity"
	},
	["diesel-locomotive-fast"] = 
	{
		Tech = "railway-2", 
		Points = 125,
		Locale = "entity"
	},
	["zinc-axe"] = 
	{
		Tech = "zinc-processing", 
		Points = 50,
		Locale = "item"
	},
	["tin-axe"] = 
	{
		Tech = "tin-processing", 
		Points = 50,
		Locale = "item"
	},
	["silver-axe"] = 
	{
		Tech = "silver-processing", 
		Points = 50,
		Locale = "item"
	},
	["lead-axe"] = 
	{
		Tech = "lead-processing", 
		Points = 50,
		Locale = "item"
	},
	["tungsten-axe"] = 
	{
		Tech = "tungsten-processing", 
		Points = 50,
		Locale = "item"
	},
	["cobalt-axe"] = 
	{
		Tech = "cobalt-processing", 
		Points = 50,
		Locale = "item"
	},
	["ardite-axe"] = 
	{
		Tech = "ardite-processing", 
		Points = 50,
		Locale = "item"
	},
	["storage-tank-2"] = 
	{
		Tech = "storage-tanks-1", 
		Points = 50,
		Locale = "entity"
	},
	["storage-tank-3"] = 
	{
		Tech = "storage-tanks-2", 
		Points = 200,
		Locale = "entity"
	},
	["storage-tank-4"] = 
	{
		Tech = "storage-tanks-3", 
		Points = 400,
		Locale = "entity"
	},
	["storage-tank-5"] = 
	{
		Tech = "storage-tanks-4", 
		Points = 600,
		Locale = "entity"
	},
	["steel-furnace-mk2"] = 
	{
		Tech = "advanced-material-processing-3", 
		Points = 150,
		Locale = "entity"
	},
	["steel-furnace-mk3"] = 
	{
		Tech = "advanced-material-processing-4", 
		Points = 300,
		Locale = "entity"
	},
	["steel-furnace-mk4"] = 
	{
		Tech = "advanced-material-processing-5", 
		Points = 450,
		Locale = "entity"
	},
	["steel-furnace-mk5"] = 
	{
		Tech = "advanced-material-processing-6", 
		Points = 600,
		Locale = "entity"
	},
	["electric-furnace-mk2"] = 
	{
		Tech = "advanced-material-processing-3", 
		Points = 150,
		Locale = "entity"
	},
	["electric-furnace-mk3"] = 
	{
		Tech = "advanced-material-processing-4", 
		Points = 300,
		Locale = "entity"
	},
	["electric-furnace-mk4"] = 
	{
		Tech = "advanced-material-processing-5", 
		Points = 450,
		Locale = "entity"
	},
	["electric-furnace-mk5"] = 
	{
		Tech = "advanced-material-processing-6", 
		Points = 600,
		Locale = "entity"
	},
	["radar-mk2"] = 
	{
		Tech = "radar-1", 
		Points = 200,
		Locale = "entity"
	},
	["radar-mk3"] = 
	{
		Tech = "radar-2", 
		Points = 400,
		Locale = "entity"
	},
	["radar-mk4"] = 
	{
		Tech = "radar-3", 
		Points = 600,
		Locale = "entity"
	},
	["radar-mk5"] = 
	{
		Tech = "radar-4", 
		Points = 1000,
		Locale = "entity"
	},
	["pumpjack-mk2"] = 
	{
		Tech = "extractor-1", 
		Points = 200,
		Locale = "entity"
	},
	["pumpjack-mk3"] = 
	{
		Tech = "extractor-2", 
		Points = 400,
		Locale = "entity"
	},
	["pumpjack-mk4"] = 
	{
		Tech = "extractor-3", 
		Points = 800,
		Locale = "entity"
	},
	["pumpjack-mk5"] = 
	{
		Tech = "extractor-4", 
		Points = 1200,
		Locale = "entity"
	},
	["offshore-pump-mk2"] = 
	{
		Tech = "pump-1", 
		Points = 100,
		Locale = "entity"
	},
	["offshore-pump-mk3"] = 
	{
		Tech = "pump-2", 
		Points = 200,
		Locale = "entity"
	},
	["offshore-pump-mk4"] = 
	{
		Tech = "pump-3", 
		Points = 350,
		Locale = "entity"
	},
	["offshore-pump-mk5"] = 
	{
		Tech = "pump-4", 
		Points = 650,
		Locale = "entity"
	},
	["pollution-clean-module-1"] = 
	{
		Tech = "pollution-clean-module-1", 
		Points = 20,
		Locale = "item"
	},
	["pollution-clean-module-2"] = 
	{
		Tech = "pollution-clean-module-2", 
		Points = 40,
		Locale = "item"
	},
	["pollution-clean-module-3"] = 
	{
		Tech = "pollution-clean-module-3", 
		Points = 80,
		Locale = "item"
	},
	["pollution-clean-module-4"] = 
	{
		Tech = "pollution-clean-module-4", 
		Points = 160,
		Locale = "item"
	},
	["pollution-clean-module-5"] = 
	{
		Tech = "pollution-clean-module-5", 
		Points = 320,
		Locale = "item"
	},
	["pollution-clean-module-6"] = 
	{
		Tech = "pollution-clean-module-6", 
		Points = 640,
		Locale = "item"
	},
	["pollution-clean-module-7"] = 
	{
		Tech = "pollution-clean-module-7", 
		Points = 1280,
		Locale = "item"
	},
	["pollution-clean-module-8"] = 
	{
		Tech = "pollution-clean-module-8", 
		Points = 2560,
		Locale = "item"
	},
	["pollution-create-module-1"] = 
	{
		Tech = "pollution-create-module-1", 
		Points = 20,
		Locale = "item"
	},
	["pollution-create-module-2"] = 
	{
		Tech = "pollution-create-module-2", 
		Points = 40,
		Locale = "item"
	},
	["pollution-create-module-3"] = 
	{
		Tech = "pollution-create-module-3", 
		Points = 80,
		Locale = "item"
	},
	["pollution-create-module-4"] = 
	{
		Tech = "pollution-create-module-4", 
		Points = 160,
		Locale = "item"
	},
	["pollution-create-module-5"] = 
	{
		Tech = "pollution-create-module-5", 
		Points = 320,
		Locale = "item"
	},
	["pollution-create-module-6"] = 
	{
		Tech = "pollution-create-module-6", 
		Points = 640,
		Locale = "item"
	},
	["pollution-create-module-7"] = 
	{
		Tech = "pollution-create-module-7", 
		Points = 1280,
		Locale = "item"
	},
	["pollution-create-module-8"] = 
	{
		Tech = "pollution-create-module-8", 
		Points = 2560,
		Locale = "item"
	},
	["speed-module-4"] = 
	{
		Tech = "speed-module-4", 
		Points = 200,
		Locale = "item"
	},
	["speed-module-5"] = 
	{
		Tech = "speed-module-5", 
		Points = 300,
		Locale = "item"
	},
	["speed-module-6"] = 
	{
		Tech = "speed-module-6", 
		Points = 450,
		Locale = "item"
	},
	["speed-module-7"] = 
	{
		Tech = "speed-module-7", 
		Points = 700,
		Locale = "item"
	},
	["speed-module-8"] = 
	{
		Tech = "speed-module-8", 
		Points = 1050,
		Locale = "item"
	},
	["effectivity-module-4"] = 
	{
		Tech = "effectivity-module-4", 
		Points = 200,
		Locale = "item"
	},
	["effectivity-module-5"] = 
	{
		Tech = "effectivity-module-5", 
		Points = 300,
		Locale = "item"
	},
	["effectivity-module-6"] = 
	{
		Tech = "effectivity-module-6", 
		Points = 450,
		Locale = "item"
	},
	["effectivity-module-7"] = 
	{
		Tech = "effectivity-module-7", 
		Points = 700,
		Locale = "item"
	},
	["effectivity-module-8"] = 
	{
		Tech = "effectivity-module-8", 
		Points = 1050,
		Locale = "item"
	},
	["productivity-module-4"] = 
	{
		Tech = "productivity-module-4", 
		Points = 200,
		Locale = "item"
	},
	["productivity-module-5"] = 
	{
		Tech = "productivity-module-5", 
		Points = 300,
		Locale = "item"
	},
	["productivity-module-6"] = 
	{
		Tech = "productivity-module-6", 
		Points = 450,
		Locale = "item"
	},
	["productivity-module-7"] = 
	{
		Tech = "productivity-module-7", 
		Points = 700,
		Locale = "item"
	},
	["productivity-module-8"] = 
	{
		Tech = "productivity-module-8", 
		Points = 1050,
		Locale = "item"
	},
	["basic-mining-drill-mk2"] = 
	{
		Tech = "miner-2", 
		Points = 200,
		Locale = "entity"
	},
	["basic-mining-drill-mk3"] = 
	{
		Tech = "miner-3", 
		Points = 400,
		Locale = "entity"
	},
	["basic-mining-drill-mk4"] = 
	{
		Tech = "miner-4", 
		Points = 600,
		Locale = "entity"
	},
	["basic-mining-drill-mk5"] = 
	{
		Tech = "miner-5", 
		Points = 800,
		Locale = "entity"
	},
	["basic-mining-drill-mk6"] = 
	{
		Tech = "miner-6", 
		Points = 10000,
		Locale = "entity"
	},
	["logistic-robot-1"] = 
	{
		Tech = "logistic-robotics-1", 
		Points = 250,
		Locale = "entity"
	},
	["logistic-robot-2"] = 
	{
		Tech = "logistic-robotics-2", 
		Points = 600,
		Locale = "entity"
	},
	["logistic-chest-active-provider-1"] = 
	{
		Tech = "logistic-system-1", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-passive-provider-1"] = 
	{
		Tech = "logistic-system-1", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-storage-1"] = 
	{
		Tech = "logistic-system-1", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-requester-1"] = 
	{
		Tech = "logistic-system-1", 
		Points = 50,
		Locale = "entity"
	},
	["roboport-1"] = 
	{
		Tech = "logistic-system-1", 
		Points = 50,
		Locale = "entity"
	},
	["robot-charger-1"] = 
	{
		Tech = "logistic-system-1", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-active-provider-2"] = 
	{
		Tech = "logistic-system-2", 
		Points = 150,
		Locale = "entity"
	},
	["logistic-chest-passive-provider-2"] = 
	{
		Tech = "logistic-system-2", 
		Points = 150,
		Locale = "entity"
	},
	["logistic-chest-storage-2"] = 
	{
		Tech = "logistic-system-2", 
		Points = 150,
		Locale = "entity"
	},
	["logistic-chest-requester-2"] = 
	{
		Tech = "logistic-system-2", 
		Points = 150,
		Locale = "entity"
	},
	["roboport-2"] = 
	{
		Tech = "logistic-system-2", 
		Points = 150,
		Locale = "entity"
	},
	["robot-charger-2"] = 
	{
		Tech = "logistic-system-2", 
		Points = 150,
		Locale = "entity"
	},
	["small-lamp-1"] = 
	{
		Tech = "optics-1", 
		Points = 50,
		Locale = "entity"
	},
	["small-lamp-2"] = 
	{
		Tech = "optics-2", 
		Points = 150,
		Locale = "entity"
	},
	["inserter-close"] = 
	{
		Tech = "inserter-optimization", 
		Points = 5,
		Locale = "entity"
	},
	["inserter-long-short"] = 
	{
		Tech = "inserter-optimization", 
		Points = 5,
		Locale = "entity"
	},
	["inserter-long-short-close"] = 
	{
		Tech = "inserter-optimization", 
		Points = 5,
		Locale = "entity"
	},
	["inserter-long-close"] = 
	{
		Tech = "inserter-optimization", 
		Points = 5,
		Locale = "entity"
	},
	["inserter-fast-close"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-fast"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-fast-short"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-fast-close"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-fast-close-short"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-close-smart"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-smart"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-smart"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-short-smart"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-close-smart"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-long-short-close-smart"] = 
	{
		Tech = "inserter-optimization-adv", 
		Points = 10,
		Locale = "entity"
	},
	["inserter-veryfast"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-veryfast-close"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-veryfast"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-veryfast-short"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-veryfast-close"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-veryfast-close-short"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-fast-close-smart"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-fast-smart"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-fast-smart-short"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-fast-smart-close"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-long-fast-smart-close-short"] = 
	{
		Tech = "inserter-optimization-fast", 
		Points = 20,
		Locale = "entity"
	},
	["inserter-veryfast-smart"] = 
	{
		Tech = "inserter-optimization-smart", 
		Points = 25,
		Locale = "entity"
	},
	["inserter-veryfast-close-smart"] = 
	{
		Tech = "inserter-optimization-smart", 
		Points = 25,
		Locale = "entity"
	},
	["inserter-long-veryfast-smart"] = 
	{
		Tech = "inserter-optimization-smart", 
		Points = 25,
		Locale = "entity"
	},
	["inserter-long-veryfast-smart-short"] = 
	{
		Tech = "inserter-optimization-smart", 
		Points = 25,
		Locale = "entity"
	},
	["inserter-long-veryfast-smart-close"] = 
	{
		Tech = "inserter-optimization-smart", 
		Points = 25,
		Locale = "entity"
	},
	["inserter-long-veryfast-smart-close-short"] = 
	{
		Tech = "inserter-optimization-smart", 
		Points = 25,
		Locale = "entity"
	},
	["dytech-inserter"] = 
	{
		Tech = "inserter-optimization-super", 
		Points = 50,
		Locale = "entity"
	},
	["dytech-inserter-fast"] = 
	{
		Tech = "inserter-optimization-super", 
		Points = 50,
		Locale = "entity"
	},
	["repair-pack"] = 
	{
		Tech = "construction-robotics", 
		Points = 25,
		Locale = "item"
	},
	["repair-pack-2"] = 
	{
		Tech = "construction-robotics-1", 
		Points = 50,
		Locale = "item"
	},
	["construction-robot-1"] = 
	{
		Tech = "construction-robotics-1", 
		Points = 200,
		Locale = "entity"
	},
	["repair-pack-3"] = 
	{
		Tech = "construction-robotics-2", 
		Points = 100,
		Locale = "item"
	},
	["construction-robot-2"] = 
	{
		Tech = "construction-robotics-2", 
		Points = 400,
		Locale = "entity"
	},
	["wooden-chest-medium"] = 
	{
		Tech = "chest-1", 
		Points = 15,
		Locale = "entity"
	},
	["iron-chest-medium"] = 
	{
		Tech = "chest-1", 
		Points = 15,
		Locale = "entity"
	},
	["steel-chest-medium"] = 
	{
		Tech = "chest-1", 
		Points = 15,
		Locale = "entity"
	},
	["wooden-chest-big"] = 
	{
		Tech = "chest-2", 
		Points = 50,
		Locale = "entity"
	},
	["iron-chest-big"] = 
	{
		Tech = "chest-2", 
		Points = 50,
		Locale = "entity"
	},
	["steel-chest-big"] = 
	{
		Tech = "chest-2", 
		Points = 50,
		Locale = "entity"
	},
	["smart-chest-medium"] = 
	{
		Tech = "chest-3", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-requester-medium"] = 
	{
		Tech = "chest-3", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-storage-medium"] = 
	{
		Tech = "chest-3", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-active-provider-medium"] = 
	{
		Tech = "chest-3", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-passive-provider-medium"] = 
	{
		Tech = "chest-3", 
		Points = 50,
		Locale = "entity"
	},
	["smart-chest-big"] = 
	{
		Tech = "chest-4", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-requester-big"] = 
	{
		Tech = "chest-4", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-storage-big"] = 
	{
		Tech = "chest-4", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-active-provider-big"] = 
	{
		Tech = "chest-4", 
		Points = 50,
		Locale = "entity"
	},
	["logistic-chest-passive-provider-big"] = 
	{
		Tech = "chest-4", 
		Points = 50,
		Locale = "entity"
	},
	["oil-refinery-1"] = 
	{
		Tech = "oil-processing-1", 
		Points = 100,
		Locale = "entity"
	},
	["chemical-plant-1"] = 
	{
		Tech = "oil-processing-1", 
		Points = 100,
		Locale = "entity"
	},
	["oil-refinery-2"] = 
	{
		Tech = "oil-processing-2", 
		Points = 250,
		Locale = "entity"
	},
	["chemical-plant-2"] = 
	{
		Tech = "oil-processing-2", 
		Points = 250,
		Locale = "entity"
	},
	["car2"] = 
	{
		Tech = "automobilism2", 
		Points = 250,
		Locale = "entity"
	},
	["basic-beacon-1"] = 
	{
		Tech = "effect-transmission-1", 
		Points = 250,
		Locale = "entity"
	},
	["basic-beacon-2"] = 
	{
		Tech = "effect-transmission-2", 
		Points = 750,
		Locale = "entity"
	},
	["basic-beacon-3"] = 
	{
		Tech = "effect-transmission-3", 
		Points = 1500,
		Locale = "entity"
	},
	["assembling-machine-4"] = 
	{
		Tech = "automation-4", 
		Points = 300,
		Locale = "entity"
	},
	["assembling-machine-5"] = 
	{
		Tech = "automation-5", 
		Points = 450,
		Locale = "entity"
	},
	["assembling-machine-6"] = 
	{
		Tech = "automation-6", 
		Points = 600,
		Locale = "entity"
	},
	["assembling-machine-7"] = 
	{
		Tech = "automation-7", 
		Points = 800,
		Locale = "entity"
	},--[[
	["centrifuge"] = 
	{
		Tech = "centrifuge", 
		Points = 50,
		Locale = "entity"
	},]]--
}