module("database")

--  [""]={},
--to add to craftitems
--  [""]={resource=1},
--to add to mineitems

--[[CRAFTED ITEMS]]--

craftitems =
{
	-- Base Game Items --
	["piercing-bullet-magazine"]={plates=6, ammo=1},
	["rocket"]={tech=2, gear=3, plates=5, ammo=1},
	["explosive-rocket"]={ammo=2},
	["flame-thrower-ammo"]={ammo=1, plates=5},
	["shotgun-shell"]={ammo=1, plates=4},
	["piercing-shotgun-shell"]={ammo=1, plates=4},
	["railgun-dart"]={ammo=1, plates=5, tech=5},
	["wooden-chest"]={chest=1},
	["iron-stick"]={plates=0.5, tech=0.5},
	["iron-axe"]={plates=3, mining=1},
	["stone-furnace"]={energy=1, tech=1, machine=1},
	["boiler"]={tech=3, energy=2, machine=1},
	["steam-engine"]={gear=5, plates=5, energy=10, machine=1},
	["iron-gear-wheel"]={gear=1, plates=2},
	["electronic-circuit"]={tech=4, plates=1},
	["basic-transport-belt"]={belt=1, plates=1, gear=1},
	["basic-mining-drill"]={mining=5, tech=3, gear=5, plates=10, machine=1},
	["burner-mining-drill"]={tech=5, plates=3, gear=3, machine=1},
	["basic-inserter"]={inserter=1, tech=1, gear=1, plates=1},
	["burner-inserter"]={inserter=1, plates=1, gear=1},
	["pipe"]={tech=1, energy=1, plates=1},
	["offshore-pump"]={tech=4, energy=2, gear=1, machine=1},
	["copper-cable"]={tech=0.5, plates=0.5},
	["small-electric-pole"]={energy=1, tech=3},
	["pistol"]={gun=1, plates=10},
	["submachine-gun"]={gun=1, gear=10, plates=15},
	["basic-bullet-magazine"]={ammo=1, plates=2},
	["basic-armor"]={armor=1, plates=40},
	["radar"]={tech=15, gear=5, plates=10, machine=1},
	["small-lamp"]={tech=2, energy=1, plates=2},
	["pipe-to-ground"]={tech=1, plates=2},
	["assembling-machine-1"]={tech=4, gear=5, plates=9, machine=1},
	["repair-pack"]={tech=1, gear=1, robot=1},
	["wooden-axe"]={mining=1},
	["poison-capsule"]={capsule=1, plates=3, tech=3},
	["slowdown-capsule"]={capsule=1, plates=2, tech=2},
	["basic-grenade"]={capsule=1, plates=5},
	["defender-capsule"]={capsule=1, ammo=1, tech=3, gear=3},
	["distractor-capsule"]={capsule=5, tech=9},
	["destroyer-capsule"]={capsule=5, tech=1},
	["basic-electric-discharge-defense-remote"]={capsule=1, tech=1},
	["gun-turret"]={turret=1, gear=5, plates=15},
	["night-vision-equipment"]={armor=1, tech=15, plates=10},
	["energy-shield-equipment"]={armor=1, tech=5, plates=10},
	["energy-shield-mk2-equipment"]={armor=11, tech=10},
	["battery-equipment"]={armor=1, tech=5, plates=10},
	["battery-mk2-equipment"]={armor=11, tech=10},
	["solar-panel-equipment"]={armor=1, tech=1, energy=15, plates=5},
	["fusion-reactor-equipment"]={armor=1, tech=40, alien=30},
	["basic-laser-defense-equipment"]={armor=1, tech=1, plates=5, turret=40},
	["basic-electric-discharge-defense-equipment"]={armor=1, tech=5, plates=20, turret=20},
	["basic-exoskeleton-equipment"]={armor=1, tech=10, plates=20, gear=30},
	["long-handed-inserter"]={inserter=2, gear=1, plates=1},
	["fast-inserter"]={inserter=2, tech=2, plates=2, gear=1},
	["smart-inserter"]={inserter=2, tech=4, gear=1},
	["player-port"]={tech=11, gear=5, plates=1, machine=1},
	["fast-transport-belt"]={belt=2, gear=5},
	["express-transport-belt"]={belt=3, gear=10},
	["solar-panel"]={energy=3, plates=5, tech=20, machine=1},
	["assembling-machine-2"]={tech=6, plates=9, gear=5, machine=1},
	["assembling-machine-3"]={tech=24, machine=1},
	["car"]={tech=14, plates=20, gear=10},
	["straight-rail"]={tech=2, plates=1},
	["curved-rail"]={tech=8, plates=4},
	["diesel-locomotive"]={energy=2, tech=8, gear=20, plates=35},
	["cargo-wagon"]={tech=2, gear=10, plates=25},
	["train-stop"]={tech=10, plates=13},
	["rail-signal"]={tech=5, plates=5},
	["heavy-armor"]={armor=2, plates=150},
	["basic-modular-armor"]={armor=4, tech=95, plates=50},
	["power-armor"]={armor=8, tech=20, plates=50, alien=10},
	["power-armor-mk2"]={armor=16, tech=30, plates=50, alien=50},
	["iron-chest"]={chest=1, plates=8},
	["steel-chest"]={chest=1, plates=8},
	["smart-chest"]={chest=2, tech=4},
	["wall"]={wall=1},
	["land-mine"]={ammo=1, plates=1},
	["flame-thrower"]={gun=1, plates=40, gear=20},
	["rocket-launcher"]={gun=1, plates=5, gear=5},
	["shotgun"]={gun=1, plates=25, gear=5},
	["combat-shotgun"]={gun=1, plates=25, gear=5},
	["railgun"]={gun=1, plates=30, tech=60},
	["science-pack-1"]={science=1, plates=1, gear=1},
	["science-pack-2"]={science=2, tech=1, belt=1},
	["science-pack-3"]={science=3, ammo=1, plates=1, inserter=1, tech=3},
	["alien-science-pack"]={science=4, alien=1},
	["lab"]={tech=15, gear=10, belt=4, machine=1},
	["red-wire"]={tech=3},
	["green-wire"]={tech=3},
	["basic-transport-belt-to-ground"]={belt=8, plates=20},
	["fast-transport-belt-to-ground"]={belt=16, plates=20},
	["express-transport-belt-to-ground"]={belt=24, plates=20},
	["basic-splitter"]={belt=7, tech=5, plates=10},
	["fast-splitter"]={belt=12, tech=10, gear=10},
	["express-splitter"]={belt=21, tech=30, gear=20},
	["advanced-circuit"]={tech=11},
	["logistic-robot"]={robot=1, plates=4, gear=5, tech=6},
	["construction-robot"]={robot=1, tech=6, gear=5, plates=4},
	["logistic-chest-active-provider"]={robot=1, chest=2, tech=3},
	["logistic-chest-passive-provider"]={robot=1, chest=2, tech=3},
	["logistic-chest-requester"]={robot=1, chest=2, tech=3},
	["logistic-chest-storage"]={robot=1, chest=2, tech=3},
	["rocket-defense"]={ammo=100, tech=1074, gun=1000, machine=10000},
	["roboport"]={robot=5, plates=45, gear=45, tech=135, machine=1},
	["steel-axe"]={plates=6, mining=1},
	["big-electric-pole"]={energy=1, plates=10},
	["substation"]={energy=5, plates=15, tech=15},
	["medium-electric-pole"]={energy=1, plates=4},
	["basic-accumulator"]={energy=25, plates=7, tech=20},
	["steel-furnace"]={energy=1, plates=8, machine=1},
	["electric-furnace"]={energy=3, plates=15, tech=15, machine=1},
	["basic-beacon"]={tech=100, plates=15, machine=1},
	["laser-turret"]={turret=2, gear=5, tech=5, plates=5},
	-- DyTech Core --
	-- DyTech Compatibility --
	-- DyTech Dynamic --
	-- DyTech Energy --
	["solar-panel-secondary"]={energy=3, plates=5, tech=20, machine=1},
	["solar-panel-terciary"]={energy=3, plates=5, tech=20, machine=1},
	["steam-engine-primary"]={gear=5, plates=5, energy=10, machine=1},
	["steam-engine-terciary"]={gear=5, plates=5, energy=10, machine=1},
	["basic-accumulator-primary"]={energy=25, plates=7, tech=20},
	["basic-accumulator-secondary"]={energy=25, plates=7, tech=20},
	-- DyTech Gems --
	-- DyTech Inserters --
	["inserter-half"]={inserter=1, tech=1, gear=1, plates=1},
	["inserter-long"]={inserter=2, plates=2, tech=2, gear=1},
	["inserter-half-long"]={inserter=2, plates=2, tech=2, gear=1},
	["inserter-fast-half"]={inserter=2, tech=2, plates=2, gear=1},
	["inserter-veryfast"]={inserter=2, tech=2, plates=2, gear=1},
	["inserter-veryfast-half"]={inserter=2, plates=2, tech=2, gear=1},
	["inserter-half-filter"]={inserter=3, tech=3, plates=1, gear=2},
	["inserter-long-filter"]={inserter=3, plates=2, tech=6, gear=2},
	["inserter-long-half-filter"]={inserter=3, tech=6, plates=2, gear=2},
	["inserter-fast-half-filter"]={inserter=3, tech=6, plates=2, gear=2},
	["inserter-veryfast-filter"]={inserter=3, plates=2, tech=6, gear=2},
	["inserter-veryfast-half-filter"]={inserter=3, plates=2, tech=6, gear=2},
	["inserter-half-smart"]={inserter=4, tech=16, plates=3, gear=3},
	["inserter-long-smart"]={inserter=4, tech=24, plates=4, gear=3},
	["inserter-long-half-smart"]={inserter=4, plates=4, tech=24, gear=3},
	["inserter-fast-half-smart"]={inserter=4, gear=3, plates=3, tech=32},
	["inserter-veryfast-smart"]={inserter=4, gear=3, tech=32, plates=3},
	["inserter-veryfast-half-smart"]={inserter=4, gear=3, tech=32, plates=3},
	["dytech-inserter"]={inserter=5, gear=10, tech=80, plates=100},
	["dytech-inserter-fast"]={inserter=6, tech=200, gear=25, plates=150},
	["long-handed-inserter-filter"]={inserter=2, gear=1, plates=1}
	-- DyTech Logistic --
	-- DyTech Metallurgy --
	-- DyTech Meteors --
	-- DyTech Mining --
	-- DyTech Modules --
	-- DyTech Storage --
	-- DyTech Tools --
	-- DyTech Transportation --
	-- DyTech Warfare --
}

foundation =
{
	["wood-foundation"]={wood=1},
	["stone-foundation"]={stone=1},
	["iron-foundation"]={iron=1},
	["steel-foundation"]={steel=1}
}

--[[MINED ITEMS]]--

mineitems =
{
	["sand"]={resource=1},
	["coal"]={resource=1},
	["stone"]={resource=1},
	["iron-ore"]={resource=1},
	["copper-ore"]={resource=1},
	["raw-wood"]={resource=1},
	["ruby-ore"]={gems=5},
	["sapphire-ore"]={gems=5},
	["diamond-ore"]={gems=5},
	["topaz-ore"]={gems=5},
	["emerald-ore"]={gems=5},
	["ruby-orex"]={gems=1},
	["sapphire-orex"]={gems=1},
	["diamond-orex"]={gems=1},
	["topaz-orex"]={gems=1},
	["emerald-orex"]={gems=1}
}

--[[KILLED ENTITIES]]--

kill =
{
	["small-biter"]={small=1},
	["medium-biter"]={medium=1},
	["big-biter"]={big=1},
	["berserker-biter"]={berserker=1},
	["elder-biter"]={elder=1},
	["king-biter"]={king=1},
	["queen-biter"]={queen=1}
}

--[[Meteor spawns]]--

meteor = 
{ 
	["meteor-small-1"]={small=1},
	["meteor-small-2"]={small=1},
	["meteor-small-3"]={small=1},
	["meteor-small-4"]={small=1},
	["meteor-small-5"]={small=1},
	["meteor-medium-1"]={medium=1},
	["meteor-medium-2"]={medium=1},
	["meteor-medium-3"]={medium=1},
	["meteor-medium-4"]={medium=1},
	["meteor-medium-5"]={medium=1},
	["meteor-large-1"]={large=1},
	["meteor-large-2"]={large=1},
	["meteor-large-3"]={large=1},
	["meteor-large-4"]={large=1},
	["meteor-large-5"]={large=1},
	["meteor-comet-1"]={comet=1},
	["meteor-comet-2"]={comet=1},
	["meteor-comet-3"]={comet=1},
	["meteor-comet-4"]={comet=1},
	["meteor-comet-5"]={comet=1},
	["meteor-asteroid-1"]={asteroid=1}
}