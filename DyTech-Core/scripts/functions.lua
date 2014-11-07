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

function ModuleChecker()
	if remote.interfaces["DyTech-Automation"] then glob.dytech.automation=true else glob.dytech.automation=false end
	if remote.interfaces["DyTech-Compatibility"] then glob.dytech.compatibility=true else glob.dytech.compatibility=false end
	if remote.interfaces["DyTech-Dynamic"] then glob.dytech.dynamic=true else glob.dytech.dynamic=false end
	if remote.interfaces["DyTech-Energy"] then glob.dytech.energy=true else glob.dytech.energy=false end
	if remote.interfaces["DyTech-Genetics"] then glob.dytech.genetics=true else glob.dytech.genetics=false end
	if remote.interfaces["DyTech-Inserters"] then glob.dytech.inserters=true else glob.dytech.inserters=false end
	if remote.interfaces["DyTech-Logistic"] then glob.dytech.logistic=true else glob.dytech.logistic=false end
	if remote.interfaces["DyTech-Metallurgy"] then glob.dytech.metallurgy=true else glob.dytech.metallurgy=false end
	if remote.interfaces["DyTech-Meteors"] then glob.dytech.meteors=true else glob.dytech.meteors=false end
	if remote.interfaces["DyTech-Modules"] then glob.dytech.modules=true else glob.dytech.modules=false end
	if remote.interfaces["DyTech-Storage"] then glob.dytech.storage=true else glob.dytech.storage=false end
	if remote.interfaces["DyTech-Tools"] then glob.dytech.tools=true else glob.dytech.tools=false end
	if remote.interfaces["DyTech-Transportation"] then glob.dytech.transportation=true else glob.dytech.transportation=false end
	if remote.interfaces["DyTech-Warfare"] then glob.dytech.warfare=true else glob.dytech.warfare=false end
end

function CounterPrinter()
	PlayerPrint("Here are all your counters with their current status!")
	PlayerPrint("Gear:".." "..tostring(glob.counter.gear))
	PlayerPrint("Resource:".." "..tostring(glob.counter.resource))
	PlayerPrint("Mining:".." "..tostring(glob.counter.mining))
	PlayerPrint("Robot:".." "..tostring(glob.counter.robot))
	PlayerPrint("Machine:".." "..tostring(glob.counter.machine))
	PlayerPrint("Gun:".." "..tostring(glob.counter.gun))
	PlayerPrint("Ammo:".." "..tostring(glob.counter.ammo))
	PlayerPrint("Capsule:".." "..tostring(glob.counter.capsule))
	PlayerPrint("Tech:".." "..tostring(glob.counter.tech))
	PlayerPrint("Plates:".." "..tostring(glob.counter.plates))
	PlayerPrint("Inserter:".." "..tostring(glob.counter.inserter))
	PlayerPrint("Energy:".." "..tostring(glob.counter.energy))
	PlayerPrint("Chest:".." "..tostring(glob.counter.chest))
	PlayerPrint("Armor:".." "..tostring(glob.counter.armor))
	PlayerPrint("Gems:".." "..tostring(glob.counter.gems))
	PlayerPrint("Belt:".." "..tostring(glob.counter.belt))
	PlayerPrint("Turret:".." "..tostring(glob.counter.turret))
	PlayerPrint("Alien:".." "..tostring(glob.counter.alien))
	PlayerPrint("Science:".." "..tostring(glob.counter.science))
	PlayerPrint("Wall:".." "..tostring(glob.counter.walls))
	PlayerPrint("Modules:".." "..tostring(glob.counter.modules))
	PlayerPrint("All Counters Combined:".." "..tostring(glob.counter.dytech))
end

function CounterPrinter2()
	PlayerPrint("Here are all your counters of second tier with their current status!")
	PlayerPrint("Item Mined:".." "..tostring(glob.counter2.mine))
	PlayerPrint("Entities Build:".." "..tostring(glob.counter2.build))
	PlayerPrint("Sectors Scanned:".." "..tostring(glob.counter2.sectorscanned))
	PlayerPrint("Entities Died:".." "..tostring(glob.counter2.died))
	PlayerPrint("Items Picked Up:".." "..tostring(glob.counter2.pickup))
	PlayerPrint("Chunks Loaded:".." "..tostring(glob.counter2.chunks))
	PlayerPrint("All Counters Combined:".." "..tostring(glob.counter2.dytech))
end

function CombatPrinter()
	PlayerPrint("The counters for the killed biters are:")
	PlayerPrint("Small Biters:".." "..tostring(glob.combat.small))
	PlayerPrint("Medium Biters:".." "..tostring(glob.combat.medium))
	PlayerPrint("Big Biters:".." "..tostring(glob.combat.big))
	PlayerPrint("Berserker Biters:".." "..tostring(glob.combat.berserker))
	PlayerPrint("Elder Biters:".." "..tostring(glob.combat.elder))
	PlayerPrint("King Biters:".." "..tostring(glob.combat.king))
	PlayerPrint("Queen Biters:".." "..tostring(glob.combat.queen))
	PlayerPrint("Dogs:".." "..tostring(glob.combat.dog))
	PlayerPrint("Birds:".." "..tostring(glob.combat.bird))
	PlayerPrint("Global Counter:".." "..tostring(glob.combat.dytech))
end


function incrementDynamicCounters(stack)
	if ItemDatabase.craftitems[stack.name] then
		for counter, ingredients in pairs(ItemDatabase.craftitems[stack.name]) do
			if ItemDatabase.craftitems[counter] then
				incrementDynamicCounters({name=counter, count=ingredients})
				debug(tostring(counter).." needs to be checked also")
			else
				glob.counter[counter]=glob.counter[counter]+(stack.count*ingredients)
				debug("Crafting: "..tostring(counter).." increased by "..tostring((stack.count*ingredients)))
			end
		end
	end
end

function incrementDynamicCountersBuild(stack)
	if BuildDatabase.craftitems[stack.name] then
		for counter, ingredients in pairs(BuildDatabase.craftitems[stack.name]) do
			if BuildDatabase.craftitems[counter] then
				incrementDynamicCountersBuild({name=counter, count=ingredients})
			else
				glob.counter[counter]=glob.counter[counter]+(1*ingredients)
				debug("Build Database called, "..tostring(counter).." increased by "..tostring((1*ingredients)).."(Player placed)")
			end
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
					if item.stack then
						if item.tobedeconstructed then
							item.orderdeconstruction(game.forces.player)
							game.createentity{name="item-pickup-dytech", position={value.position.x, value.position.y+0.5}}
						break
						end
					end
				end
			end
		end
	end
end

-- processItem is still a stack, just better named
ProcessRecycling = function(processItem, recycler, recursive)
  if recursive and type(recursive) == "table" then
    local baseItems = recursive
  else
    local baseItems = {}
  end
  
  if RecyclerDatabase.recycleitems[processItem.name] then
    for baseItem, count in pairs(RecyclerDatabase.recycleitems[processItem.name]) do
      if RecyclerDatabase.recycleitems[baseItem] then
        ProcessRecycling({name=baseItem, count=count}, nil, baseItems)
      else
        table.insert(baseItems, {name=baseItem, count=(processItem.count*count)})
      end
    end
  end
  
  -- will not run for recursive call since recycler is nil
  if recycler and recycler.valid then
    -- possible bug V since the baseItems aren't inserted yet...
    recycler.remove(processItem)
    for index, baseItem in pairs(baseItems) do
      -- additional standard checks for room, if false maybe return the baseItem table...
      -- this is why I chose to insert them as a stack in the else above, a tiny bit easier
      recycler.insert(baseItem)
    end
  else
    return baseItems
  end
end

