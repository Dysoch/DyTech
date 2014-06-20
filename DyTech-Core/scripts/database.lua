module("database")

--  [""]={},
--to add to craftitems
--  [""]={resource=1},
--to add to mineitems

--[[CRAFTED ITEMS]]--

craftitems =
{
	-- Base Game Items --
	["wood"]={resource=0.5},
	["wooden-chest"]={["wood"]=4, chest=1},
	["iron-stick"]={plates=0.5, tech=0.5},
	["iron-axe"]={plates=3, mining=1, ["iron-stick"]=2},
	["stone-furnace"]={resource=5, machine=1},
	["boiler"]={["stone-furnace"]=1, ["pipe"]=1, machine=1, energy=1},
	["steam-engine"]={["iron-gear-wheel"]=5, ["pipe"]=5, plates=5, machine=1, energy=1},
	["iron-gear-wheel"]={plates=2, gear=1},
	["electronic-circuit"]={plates=1, tech=1, ["copper-cable"]=3},
	["basic-transport-belt"]={plates=1, ["iron-gear-wheel"]=1, belt=1},
	["basic-mining-drill"]={["electronic-circuit"]=3, ["iron-gear-wheel"]=5, plates=10, mining=2, machine=1},
	["burner-mining-drill"]={["iron-gear-wheel"]=3, ["stone-furnace"]=1, plates=3, mining=1, machine=1},
	["basic-inserter"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, plates=1, inserter=1},
	["burner-inserter"]={plates=1, ["iron-gear-wheel"]=1, inserter=1},
	["pipe"]={plates=1, tech=1},
	["offshore-pump"]={["electronic-circuit"]=2, ["pipe"]=1, ["iron-gear-wheel"]=1, machine=1},
	["copper-cable"]={plates=0.5, tech=0.5},
	["small-electric-pole"]={["wood"]=2, ["copper-cable"]=2, energy=1},
	["pistol"]={plates=10, gun=1},
	["submachine-gun"]={gun=1, ["iron-gear-wheel"]=10, plates=15},
	["basic-bullet-magazine"]={ammo=1, plates=2},
	["basic-armor"]={armor=1, plates=40},
	["radar"]={machine=1, ["electronic-circuit"]=5, ["iron-gear-wheel"]=5, plates=10},
	["small-lamp"]={["electronic-circuit"]=1, ["iron-stick"]=3, plates=1, machine=1, energy=1},
	["pipe-to-ground"]={["pipe"]=10, plates=5, tech=1},
	["assembling-machine-1"]={["electronic-circuit"]=3, ["iron-gear-wheel"]=5, plates=9, machine=1},
	["repair-pack"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, tech=1},
	["piercing-bullet-magazine"]={ammo=1, plates=6},
	["rocket"]={["electronic-circuit"]=1, ["explosives"]=2, plates=2, ammo=1},
	["explosive-rocket"]={["rocket"]=1, ["explosives"]=5, ammo=1},
	["shotgun-shell"]={ammo=1, plates=4},
	["piercing-shotgun-shell"]={ammo=1, plates=4},
	["railgun-dart"]={ammo=1, plates=5, ["electronic-circuit"]=5},
	["poison-capsule"]={plates=3, capsule=1, ["electronic-circuit"]=3, resource=10},
	["slowdown-capsule"]={plates=2, capsule=1, ["electronic-circuit"]=2, resource=5},
	["basic-grenade"]={plates=5, resource=10, capsule=1},
	["defender-capsule"]={capsule=1, ["piercing-bullet-magazine"]=1, ["electronic-circuit"]=2, ["iron-gear-wheel"]=3},
	["distractor-capsule"]={capsule=5, ["defender-capsule"]=4, ["advanced-circuit"]=3},
	["destroyer-capsule"]={capsule=5, ["distractor-capsule"]=4, ["speed-module"]=1},
	["basic-electric-discharge-defense-remote"]={capsule=1, ["electronic-circuit"]=1},
	["plastic-bar"]={resource=4, tech=1},
	["night-vision-equipment"]={armor=1, ["advanced-circuit"]=5, plates=10},
	["energy-shield-equipment"]={armor=1, ["advanced-circuit"]=5, plates=10},
	["energy-shield-mk2-equipment"]={armor=1, ["energy-shield-equipment"]=10, ["processing-unit"]=10},
	["battery-equipment"]={armor=1, ["battery"]=5, plates=10},
	["battery-mk2-equipment"]={armor=1, ["battery-equipment"]=10, ["processing-unit"]=20},
	["solar-panel-equipment"]={armor=1, ["solar-panel"]=5, ["processing-unit"]=1, plates=5},
	["fusion-reactor-equipment"]={armor=1, ["processing-unit"]=100, alien=30},
	["basic-laser-defense-equipment"]={armor=1, ["processing-unit"]=1, plates=5, ["laser-turret"]=5},
	["basic-electric-discharge-defense-equipment"]={armor=1, ["processing-unit"]=5, plates=20, ["laser-turret"]=10},
	["basic-exoskeleton-equipment"]={armor=1, ["processing-unit"]=10, plates=20, ["electric-engine-unit"]=30},
	["gun-turret"]={turret=1, ["iron-gear-wheel"]=5, plates=15},
	["laser-turret"]={turret=2, ["electronic-circuit"]=5, ["battery"]=3, plates=5},
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

--[[MINED ITEMS]]--

mineitems =
{
	["sand"]={resource=1},
	["coal"]={resource=1},
	["stone"]={resource=1},
	["iron-ore"]={resource=1},
	["copper-ore"]={resource=1},
	["gold-ore"]={resource=1},
	["silver-ore"]={resource=1},
	["zinc-ore"]={resource=1},
	["tungsten-ore"]={resource=1},
	["tin-ore"]={resource=1},
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