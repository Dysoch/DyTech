module("Load", package.seeall)
require("util")

function OnLoad()
	if not glob.counter then glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0} end
	if not glob.counter.dytech then glob.counter.dytech=0 end
	if not glob.counter.gear then glob.counter.gear=0 end
	if not glob.counter.resource then glob.counter.resource=0 end
	if not glob.counter.mining then glob.counter.mining=0 end
	if not glob.counter.robot then glob.counter.robot=0 end
	if not glob.counter.ammo then glob.counter.ammo=0 end
	if not glob.counter.gun then glob.counter.gun=0 end
	if not glob.counter.machine then glob.counter.machine=0 end
	if not glob.counter.capsule then glob.counter.capsule=0 end
	if not glob.counter.tech then glob.counter.tech=0 end
	if not glob.counter.plates then glob.counter.plates=0 end
	if not glob.counter.inserter then glob.counter.inserter=0 end
	if not glob.counter.energy then glob.counter.energy=0 end
	if not glob.counter.chest then glob.counter.chest=0 end
	if not glob.counter.armor then glob.counter.armor=0 end
	if not glob.counter.gems then glob.counter.gems=0 end
	if not glob.counter.belt then glob.counter.belt=0 end
	if not glob.counter.turret then glob.counter.turret=0 end
	if not glob.counter.alien then glob.counter.alien=0 end
	if not glob.counter.science then glob.counter.science=0 end
	if not glob.counter.wall then glob.counter.wall=0 end
	if not glob.counter.modules then glob.counter.modules=0 end
	if not glob.timer then glob.timer={seconds=0, minutes=0, hours=0} end
	if not glob.timer.seconds then glob.timer.seconds=0 end
	if not glob.timer.minutes then glob.timer.minutes=0 end
	if not glob.timer.hours then glob.timer.hours=0 end
	if not glob.combat then glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0} end
	if not glob.combat.dytech then glob.combat.dytech=0 end
	if not glob.combat.small then glob.combat.small=0 end
	if not glob.combat.medium then glob.combat.medium=0 end
	if not glob.combat.big then glob.combat.big=0 end
	if not glob.combat.berserker then glob.combat.berserker=0 end
	if not glob.combat.elder then glob.combat.elder=0 end
	if not glob.combat.king then glob.combat.king=0 end
	if not glob.combat.queen then glob.combat.queen=0 end
	if not glob.combat.dog then glob.combat.dog=0 end
	if not glob.combat.bird then glob.combat.bird=0 end
	if not glob.counter2 then glob.counter2={dytech=0, mine=0, build=0, sectorscanned=0, died=0, pickup=0, chunks=0} end
	if not glob.counter2.dytech then glob.counter2.dytech=0 end
	if not glob.counter2.mine then glob.counter2.mine=0 end
	if not glob.counter2.build then glob.counter2.build=0 end
	if not glob.counter2.sectorscanned then glob.counter2.sectorscanned=0 end
	if not glob.counter2.died then glob.counter2.died=0 end
	if not glob.counter2.pickup then glob.counter2.pickup=0 end
	if not glob.counter2.chunks then glob.counter2.chunks=0 end
	if not glob.dytech then glob.dytech={core=true, compatibility=false, dynamic=false, energy=false, genetics=false, inserters=false, logistic=false, metallurgy=false, meteors=false, automation=false, modules=false, storage=false, tools=false, transportation=false, warfare=false} end 
	if not glob.dytech.core then glob.dytech.core=true end
	if not glob.dytech.automation then glob.dytech.automation=false end
	if not glob.dytech.compatibility then glob.dytech.compatibility=false end
	if not glob.dytech.dynamic then glob.dytech.dynamic=false end
	if not glob.dytech.energy then glob.dytech.energy=false end
	if not glob.dytech.genetics then glob.dytech.genetics=false end
	if not glob.dytech.inserters then glob.dytech.inserters=false end
	if not glob.dytech.logistic then glob.dytech.logistics=false end
	if not glob.dytech.metallurgy then glob.dytech.metallurgy=false end
	if not glob.dytech.meteors then glob.dytech.meteors=false end
	if not glob.dytech.modules then glob.dytech.modules=false end
	if not glob.dytech.storage then glob.dytech.storage=false end
	if not glob.dytech.tools then glob.dytech.tools=false end
	if not glob.dytech.transportation then glob.dytech.transportation=false end
	if not glob.dytech.warfare then glob.dytech.warfare=false end
	if not glob.compatibility then glob.compatibility={treefarm=false, Fmod=false} end
	if not glob.compatibility.treefarm then glob.compatibility.treefarm=false end
	if not glob.compatibility.Fmod then glob.compatibility.Fmod=false end
	if not glob.stone then glob.stone={} end
	if not glob.stonecount then glob.stonecount=0 end
--	if not glob.sand then glob.sand={} end
--	if not glob.sandcount then glob.sandcount=0 end
	if not glob.debug then glob.debug = false end
	if not glob.coal then glob.coal={} end
	if not glob.coalcount then glob.coalcount=0 end
	if not glob.dytechitem then glob.dytechitem={} end
	if not glob.dytechitemcount then glob.dytechitemcount=0 end
	if not glob.trees then glob.trees = {} end
	if not glob.trees.seedTypes then glob.trees.seedTypes = {} end
	if not glob.trees.seedTypes.RubberTree then glob.trees.seedTypes = {RubberTree = {
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
		fertilizerBoost = 1.45 }} end
	if not glob.trees.isGrowing then glob.trees.isGrowing = {RubberTree = {}} end
	if not glob.trees.tmpData then glob.trees.tmpData = {} end
	if not glob.CraftedItems then glob.CraftedItems = {} end
	if not glob.PickedItems then glob.PickedItems = {} end
	if not glob.MinedItems then glob.MinedItems = {} end
end