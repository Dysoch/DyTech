module("Init", package.seeall)
require("util")

function OnInit()
glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0}
glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0}
glob.counter2={dytech=0, mine=0, build=0, sectorscanned=0, died=0, pickup=0, chunks=0}
glob.dytech={core=true, dynamic=false, energy=false, genetics=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false}
glob.timer={seconds=0, minutes=0, hours=0}
glob.stone={}
glob.stonecount=0
--glob.sand={}
--glob.sandcount=0
glob.coal={}
glob.coalcount=0
glob.dytechitem={}
glob.dytechitemcount=0
glob.compatibility={treefarm=false, Fmod=false}
glob.debug=false
glob.CraftedItems = {}
glob.PickedItems = {}
glob.MinedItems = {}
glob.EntityDied = {}
glob.trees = {}
glob.trees.seedTypes = {RubberTree = {}}
glob.trees.seedTypes.RubberTree = {
	states = {
		"rubber-seed",
		"small-rubber-tree",
		"medium-rubber-tree",
		"mature-rubber-tree" },
	output = {"resin", 3},
	efficiency = {
		["grass"] = 1.00,
		["grass-medium"] = 1.50,
		["grass-dry"] = 0.75,
		["dirt"] = 1.25,
		["dirt-dark"] = 1.25,
		["hills"] = 0.80,
		["sand"] = 0.25,
		["sand-dark"] = 0.25,
		["other"] = 0 },
	basicGrowingTime = 7500,
	randomGrowingTime = 4500,
	fertilizerBoost = 1.45 }
glob.trees.isGrowing = {RubberTree = {}}
glob.trees.tmpData = {}
for seedTypeName, seedTypeInfo in pairs (glob.trees.seedTypes) do
	if game.itemprototypes[seedTypeInfo.states[1]] == nil then
		glob.trees.isGrowing[seedTypeName] = nil
		glob.trees.seedTypes[seedTypeName] = nil
	end
end
end