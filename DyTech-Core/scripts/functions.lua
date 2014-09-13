module("fs", package.seeall)
require("util")

function Timer(event)
	if event.tick%60==0 then
		glob.timer.seconds = glob.timer.seconds + 1
	end
	if glob.timer.seconds==60 then
		glob.timer.seconds = 0
		glob.timer.minutes = glob.timer.minutes + 1
	end
	if glob.timer.minutes==60 then
		glob.timer.minutes = 0
		glob.timer.hours = glob.timer.hours + 1
	end
end

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
		--break
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
		--break
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

function craftModularTool(name)
  local main = defines.inventory.playermain
  local quick = defines.inventory.playerquickbar
  local tools = defines.inventory.playertools
  
  local maincount = game.player.getinventory(main).getitemcount(name)
  local quickcount = game.player.getinventory(quick).getitemcount(name)
  local toolscount = game.player.getinventory(tools).getitemcount(name)
  
  game.player.insert{name=name, count=1}
  
  local maincount2 = game.player.getinventory(main).getitemcount(name)
  local quickcount2 = game.player.getinventory(quick).getitemcount(name)
  local toolscount2 = game.player.getinventory(tools).getitemcount(name)
  
  if ((maincount2 > maincount) or (quickcount2 > quickcount) or (toolscount2 > toolscount)) then
    -- insert successful
  else
    -- unsuccessful
  end
end

function getModularToolname(handle, rod, head)
  local sep = "-"
  return handle..sep..rod..sep..head..sep.."dytech"..sep.."axe"
end
