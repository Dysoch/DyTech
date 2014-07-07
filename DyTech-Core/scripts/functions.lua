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
	if not glob.dytech then glob.dytech={core=true, compatibility=false, dynamic=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false} end 
	if not glob.dytech.core then glob.dytech.core=true end
	if not glob.dytech.compatibility then glob.dytech.compatibility=false end
	if not glob.dytech.dynamic then glob.dytech.dynamic=false end
	if not glob.dytech.energy then glob.dytech.energy=false end
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
	if not glob.compatibility then glob.compatibility={treefarm=false, Fmod=false} end
	if not glob.compatibility.treefarm then glob.compatibility.treefarm=false end
	if not glob.compatibility.Fmod then glob.compatibility.Fmod=false end
	if not glob.stone then glob.stone={} end
	if not glob.stonecount then glob.stonecount=0 end
--	if not glob.sand then glob.sand={} end
--	if not glob.sandcount then glob.sandcount=0 end
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
		basicGrowingTime = 3600,
		randomGrowingTime = 1800,
		fertilizerBoost = 1.25 }} end
	if not glob.trees.isGrowing then glob.trees.isGrowing = {RubberTree = {}} end
	if not glob.trees.tmpData then glob.trees.tmpData = {} end
end

function OnInit()
glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0, sectorscanned=0}
glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dog=0, bird=0}
glob.counter2={dytech=0, mine=0, build=0, sectorscanned=0, died=0, pickup=0, chunks=0}
glob.dytech={core=true, dynamic=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, mining=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false}
glob.stone={}
glob.stonecount=0
--glob.sand={}
--glob.sandcount=0
glob.coal={}
glob.coalcount=0
glob.dytechitem={}
glob.dytechitemcount=0
glob.compatibility={treefarm=false, Fmod=false}
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
	basicGrowingTime = 3600,
	randomGrowingTime = 1800,
	fertilizerBoost = 1.25 }
glob.trees.isGrowing = {RubberTree = {}}
glob.trees.tmpData = {}
for seedTypeName, seedTypeInfo in pairs (glob.trees.seedTypes) do
	if game.itemprototypes[seedTypeInfo.states[1]] == nil then
		glob.trees.isGrowing[seedTypeName] = nil
		glob.trees.seedTypes[seedTypeName] = nil
	end
end
end

function updateEntityState(entInfo)
	local newState = entInfo.state + 1
	local seedTypeName
	if entInfo.entity.valid then
		seedTypeName = getSeedTypeByEntityName(entInfo.entity.name)
	else
		return
	end
	if newState > #glob.trees.seedTypes[seedTypeName].states then
		return
	else
		local tmpPos = entInfo.entity.position
		local newEnt = game.createentity{name = glob.trees.seedTypes[getSeedTypeByEntityName(entInfo.entity.name)].states[newState], position = tmpPos}
		entInfo.entity.destroy()
		local deltaTime = math.ceil((math.random() * glob.trees.seedTypes[seedTypeName].randomGrowingTime + glob.trees.seedTypes[seedTypeName].basicGrowingTime) / entInfo.efficiency)
		local nextUpdateIn = game.tick + deltaTime
		local updatedEntry =
		{
			entity = newEnt,
			state = newState,
			efficiency = entInfo.efficiency,
			fertilized = entInfo.fertilized,
			nextUpdate = nextUpdateIn
		}
		placeSeedIntoList(updatedEntry, seedTypeName)
	end
end

function getSeedTypeByEntityName(entityName)
	for seedTypeName, seedType in pairs(glob.trees.seedTypes) do
		for _, stateName in pairs(seedType.states) do
			if entityName == stateName then
				return seedTypeName
			end
		end
	end
	return nil
end

function placeSeedIntoList(entInfo, seedTypeName)
	for currentIndex,EntityEntry in ipairs(glob.trees.isGrowing[seedTypeName]) do
		if EntityEntry.nextUpdate > entInfo.nextUpdate then
			table.insert(glob.trees.isGrowing[seedTypeName], currentIndex, entInfo)
			return
		end
	end
	table.insert(glob.trees.isGrowing[seedTypeName], entInfo)
end

function calcEfficiency(entity, fertilizerApplied)
	local seedType = getSeedTypeByEntityName(entity.name)
	local currentTilename = game.gettile(entity.position.x, entity.position.y).name
	for tilename, value in pairs(glob.trees.seedTypes[seedType].efficiency) do
		if tilename == currentTilename then
			local efficiency = value
			if fertilizerApplied == true then
				efficiency = efficiency + glob.trees.seedTypes[seedType].fertilizerBoost
			end
			return efficiency
		end
	end
	return glob.trees.seedTypes[seedType].efficiency.other
end

function seedPlaced(placedSeed, seedTypeName)
	local newEfficiency = calcEfficiency(placedSeed, false)
	local deltaTime = math.ceil((math.random() * glob.trees.seedTypes[seedTypeName].randomGrowingTime + glob.trees.seedTypes[seedTypeName].basicGrowingTime) / newEfficiency)
	local nextUpdateIn = game.tick + deltaTime
	local entInfo =
	{
		entity = placedSeed,
		state = 1,
		efficiency = newEfficiency,
		fertilized = false,
		nextUpdate = nextUpdateIn
	}
	placeSeedIntoList(entInfo, seedTypeName)
end

function getboundingbox(position, radius)
return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius} end

function CollectByPosition(name, radius, ext)
	local realname=name.."-collector"
	if ext then realname=realname.."-1" end
	for i, value in pairs(glob[name]) do
    local foundcollector=game.findentitiesfiltered{name=realname, area={getboundingbox(value.position, 1)}}
		if not foundcollector[1] then
		table.remove(glob[name], i)
		break
		else
			for _, item in pairs(game.findentitiesfiltered{name="item-on-ground", area={getboundingbox(value.position, radius)}}) do
				if item.stack.name==name and foundcollector[1].caninsert{name=name, count=1} then
					foundcollector[1].insert{name=name, count=1}
					game.createentity{name="item-pickup-dytech", position={value.position.x, value.position.y+0.5}}
					item.destroy()
				break
				end
			end
		end
	end
end

function DyTechItemCollect(name, radius)
	local realname="dytech-item-collector"
	for i, value in pairs(glob.dytechitem) do
	local foundcollector=game.findentitiesfiltered{name=realname, area={getboundingbox(value.position, 1)}}
		if not foundcollector[1] then
		table.remove(glob.dytechitem, i)
		break
		else
		local insertable=game.findentitiesfiltered{name="item-on-ground", area={getboundingbox(value.position, radius)}}
			for _, item in pairs(insertable) do
				if game.findentitiesfiltered{type="transport-belt", area={getboundingbox(item.position, 0.5)}}[1]==nil and game.findentitiesfiltered{type="transport-belt-to-ground", area={getboundingbox(item.position, 0.5)}}[1]==nil and game.findentitiesfiltered{type="splitter", area={getboundingbox(item.position, 0.5)}}[1]==nil then
					if item.stack and foundcollector[1].caninsert(item.stack) then
						foundcollector[1].insert(item.stack)
						game.createentity{name="item-pickup-dytech", position={value.position.x, value.position.y+0.5}}
						item.destroy()
					break
					end
				end
			end
		end
	end
end