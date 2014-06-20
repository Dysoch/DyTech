module("fs", package.seeall)
require("util")

function CounterPrinter()
	game.player.print("Here are all your counters with their current status!")
	game.player.print("Gear:".." "..tostring(glob.counter.gear))
	game.player.print("Resource:".." "..tostring(glob.counter.resource))
	game.player.print("Mining:".." "..tostring(glob.counter.mining))
	game.player.print("Robot:".." "..tostring(glob.counter.robot))
	game.player.print("Machine:".." "..tostring(glob.counter.machine))
	game.player.print("Gun:".." "..tostring(glob.counter.gun))
	game.player.print("Ammo:".." "..tostring(glob.counter.ammo))
	game.player.print("Capsule:".." "..tostring(glob.counter.capsule))
	game.player.print("Tech:".." "..tostring(glob.counter.tech))
	game.player.print("Plates:".." "..tostring(glob.counter.plates))
	game.player.print("Inserter:".." "..tostring(glob.counter.inserter))
	game.player.print("Energy:".." "..tostring(glob.counter.energy))
	game.player.print("Chest:".." "..tostring(glob.counter.chest))
	game.player.print("Armor:".." "..tostring(glob.counter.armor))
	game.player.print("Gems:".." "..tostring(glob.counter.gems))
	game.player.print("Belt:".." "..tostring(glob.counter.belt))
	game.player.print("Turret:".." "..tostring(glob.counter.turret))
	game.player.print("Alien:".." "..tostring(glob.counter.alien))
	game.player.print("Science:".." "..tostring(glob.counter.science))
	game.player.print("Wall:".." "..tostring(glob.counter.wall))
	game.player.print("Modules:".." "..tostring(glob.counter.modules))
	game.player.print("All Counters Combined:".." "..tostring(glob.counter.dytech))
end

function CounterPrinter2()
	game.player.print("Here are all your counters of second tier with their current status!")
	game.player.print("Item Mined:".." "..tostring(glob.counter2.mine))
	game.player.print("Entities Build:".." "..tostring(glob.counter2.build))
	game.player.print("Sectors Scanned:".." "..tostring(glob.counter2.sectorscanned))
	game.player.print("Entities Died:".." "..tostring(glob.counter2.died))
	game.player.print("Items Picked Up:".." "..tostring(glob.counter2.pickup))
	game.player.print("Chunks Loaded:".." "..tostring(glob.counter2.chunks))
	game.player.print("All Counters Combined:".." "..tostring(glob.counter2.dytech))
end

function CombatPrinter()
	game.player.print("The counters for the killed biters are:")
	game.player.print("Small Biters:".." "..tostring(glob.combat.small))
	game.player.print("Medium Biters:".." "..tostring(glob.combat.medium))
	game.player.print("Big Biters:".." "..tostring(glob.combat.big))
	game.player.print("Berserker Biters:".." "..tostring(glob.combat.berserker))
	game.player.print("Elder Biters:".." "..tostring(glob.combat.elder))
	game.player.print("King Biters:".." "..tostring(glob.combat.king))
	game.player.print("Queen Biters:".." "..tostring(glob.combat.queen))
	game.player.print("Dogs:".." "..tostring(glob.combat.dog))
	game.player.print("Birds:".." "..tostring(glob.combat.bird))
	game.player.print("Global Counter:".." "..tostring(glob.combat.dytech))
end

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
	if not glob.dytech then glob.dytech={core=true, compatibility=false, dynamic=false, energy=false, gems=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false} end 
	if not glob.dytech.core then glob.dytech.core=true end
	if not glob.dytech.compatibility then glob.dytech.compatibility=false end
	if not glob.dytech.dynamic then glob.dytech.dynamic=false end
	if not glob.dytech.energy then glob.dytech.energy=false end
	if not glob.dytech.gems then glob.dytech.gems=false end
	if not glob.dytech.inserters then glob.dytech.inserters=false end
	if not glob.dytech.logistic then glob.dytech.logistics=false end
	if not glob.dytech.metallurgy then glob.dytech.metallurgy=false end
	if not glob.dytech.meteors then glob.dytech.meteors=false end
	if not glob.dytech.mining then glob.dytech.mining=false end
	if not glob.dytech.modules then glob.dytech.modules=false end
	if not glob.dytech.storage then glob.dytech.storage=false end
	if not glob.dytech.tools then glob.dytech.tools=false end
	if not glob.dytech.transportation then glob.dytech.transportation=false end
	if not glob.dytech.warfare then glob.dytech.warfare=false end
end

function OnInit()
glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0, sectorscanned=0}
glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0}
glob.counter2={dytech=0, mine=0, build=0, sectorscanned=0, died=0, pickup=0, chunks=0}
glob.dytech={core=true, dynamic=false, energy=false, gems=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false}
end