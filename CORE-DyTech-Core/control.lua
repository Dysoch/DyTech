require "defines"
require "scripts/functions"
require "scripts/gui"
require "scripts/remote-calls"
require "scripts/trees"


--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on

function debug(str)
	if debug_master then
		PlayerPrint(str)
	end
end
function PlayerPrint(message)
	for _,player in pairs(game.players) do
		player.print(message)
	end
end

--[[TreeFarm Stuff, for trees!]]--
function populateSeedTypeLookUpTable()
if seedTypeLookUpTable==nil then seedTypeLookUpTable = {} end
  for seedTypeName, seedType in pairs(global.tf.seedPrototypes) do
    for _, stateName in pairs(seedType.states) do
      seedTypeLookUpTable[stateName] = seedTypeName
    end
  end
end

game.on_init(function()
	if not remote.interfaces["treefarm_interface"] then 
		debug("Treefarm not installed")
		Trees.OnInit()
	elseif remote.interfaces.treefarm_interface and remote.interfaces.treefarm_interface.getSeedTypesData then
		remote.call("treefarm_interface", "addSeed", Trees.RubberTree)
		remote.call("treefarm_interface", "addSeed", Trees.SulfurTree)
	end
	fs.Startup()
end)

game.on_save(function()

end)

game.on_load(function()
	if not remote.interfaces["treefarm_interface"] then 
	debug("Treefarm not installed")
		Trees.OnLoad()
	elseif remote.interfaces["treefarm_interface"] and remote.interfaces.treefarm_interface.getSeedTypesData then
		if not remote.call("treefarm_interface", "readSeed", "RubberTree") then
			remote.call("treefarm_interface", "addSeed", Trees.RubberTree)
		end
		if not remote.call("treefarm_interface", "readSeed", "SulfurTree") then
			remote.call("treefarm_interface", "addSeed", Trees.SulfurTree)
		end
	end
	CoreGUI.CreateButton()
end)

game.on_event(defines.events.on_tick, function(event)
	if event.tick%600==0 then
		game.wind_orientation = math.random()
		debug(tostring(game.wind_orientation))
	end
	fs.Timer(event)
	--if not DyTechOnInit then
		--DyTechOnInit = true
	--end
	if not remote.interfaces["treefarm_interface"] then
	while ((global.tf.growing[1] ~= nil) and (event.tick >= global.tf.growing[1].nextUpdate)) do
    local removedEntity = table.remove(global.tf.growing, 1)
    local seedTypeName
    local newState
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
		if removedEntity.entity.valid then
			seedTypeName = seedTypeLookUpTable[removedEntity.entity.name]
			newState = removedEntity.state + 1
			if newState <= #global.tf.seedPrototypes[seedTypeName].states then
			local tmpPos = removedEntity.entity.position
			local newEnt = game.createentity{name = global.tf.seedPrototypes[seedTypeLookUpTable[removedEntity.entity.name]].states[newState], position = tmpPos}
			removedEntity.entity.destroy()
			debug("Old tree removed, new one placed")
			local deltaTime = math.ceil((math.random() * global.tf.seedPrototypes[seedTypeName].randomGrowingTime + global.tf.seedPrototypes[seedTypeName].basicGrowingTime) / removedEntity.efficiency)
			local updatedEntry =
			{
				entity = newEnt,
				state = newState,
				efficiency = removedEntity.efficiency,
				nextUpdate = event.tick + deltaTime
			}
			Trees.placeSeedIntoList(updatedEntry)
			debug("seed placed into list (ontick event")
			end
		end
	end end
end)

game.on_event(defines.events.on_player_crafted_item, function(event)
	fs.CraftedItemsLogger(event.item_stack.name, event.item_stack.count)
end)

game.on_event(defines.events.on_player_mined_item, function(event)
	fs.MinedItemsLogger(event.item_stack.name, event.item_stack.count)
end)

game.on_event(defines.events.on_robot_mined, function(event)
	fs.RobotMinedItemsLogger(event.item_stack.name, event.item_stack.count)
end)

game.on_event(defines.events.on_entity_died, function(event)
	fs.EntityDiedLogger(event.entity.name)
end)

game.on_event(defines.events.on_sector_scanned, function(event)
	fs.SectorScannedLogger()
end)

game.on_event(defines.events.on_marked_for_deconstruction, function(event)
	fs.MarkedForDeconstructionLogger(event.entity.name)
end)

game.on_event(defines.events.on_canceled_deconstruction, function(event)
	fs.CanceledDeconstructionLogger(event.entity.name)
end)

game.on_event(defines.events.on_picked_up_item, function(event)
	fs.PickedItemsLogger(event.item_stack.name, event.item_stack.count)
end)

game.on_event(defines.events.on_research_started, function(event)
	fs.TechLogger("started", event.research)
end)

game.on_event(defines.events.on_research_finished, function(event)
if game.players == 1 then
	if game.player.controller_type == 2 or game.player.controller_type == 0 then
		fs.TechLogger("finished-god", event.research)
	elseif game.player.controller_type == 1 then
		fs.TechLogger("finished", event.research)
	end
else
	fs.TechLogger("finished", event.research)
end	
end)

game.on_event(defines.events.on_built_entity, function(event)
	fs.BuildEntityLogger(event.created_entity.name)
local player = game.players[event.player_index]
	if not remote.interfaces["treefarm_interface"] then
	if event.created_entity.type == "tree" then
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
	debug("tree created (player "..tostring(event.player_index)..")")
    local currentSeedTypeName = seedTypeLookUpTable[event.created_entity.name]
		if currentSeedTypeName ~= nil then
		debug("currentSeedTypeName = nil")
		local newEfficiency = Trees.calcEfficiency(event.created_entity, false)
		local deltaTime = math.ceil((math.random() * global.tf.seedPrototypes[currentSeedTypeName].randomGrowingTime + global.tf.seedPrototypes[currentSeedTypeName].basicGrowingTime) / newEfficiency)
		local nextUpdateIn = event.tick + deltaTime
		local entInfo =
		{
			entity = event.created_entity,
			state = 1,
			efficiency = newEfficiency,
			nextUpdate = nextUpdateIn
		}
		Trees.placeSeedIntoList(entInfo)
		debug("seed placed into list (player "..tostring(event.player_index)..")")
		return
		debug("return")
		end
	end end
end)

game.on_event(defines.events.on_robot_built_entity, function(event)
	fs.RobotBuildEntityLogger(event.created_entity.name)
local player = game.players[event.player_index]
	if not remote.interfaces["treefarm_interface"] then
	if event.created_entity.type == "tree" then
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
	debug("tree created (Robot)")
    local currentSeedTypeName = seedTypeLookUpTable[event.created_entity.name]
		if currentSeedTypeName ~= nil then
		debug("currentSeedTypeName ~= nil")
		local newEfficiency = Trees.calcEfficiency(event.created_entity, false)
		local deltaTime = math.ceil((math.random() * global.tf.seedPrototypes[currentSeedTypeName].randomGrowingTime + global.tf.seedPrototypes[currentSeedTypeName].basicGrowingTime) / newEfficiency)
		local nextUpdateIn = event.tick + deltaTime
		local entInfo =
		{
			entity = event.created_entity,
			state = 1,
			efficiency = newEfficiency,
			nextUpdate = nextUpdateIn
		}
		Trees.placeSeedIntoList(entInfo)
		debug("seed placed into list (Robot)")
		return
		debug("return")
		end
	end end
end)

game.on_event(defines.events.on_chunk_generated, function(event)
	if not global.Logger.ChunkGenerated then 
		global.Logger.ChunkGenerated = 1
	else
		global.Logger.ChunkGenerated = global.Logger.ChunkGenerated + 1
	end
	if debug_chunks then debug("Chunk Generated, chunks counter is now "..tostring(global.Logger.ChunkGenerated)) end
end)

game.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
	if event.element.name == "DyTech-Button" then
		player.gui.top["DyTech-Button"].destroy()
		CoreGUI.showDyTechGUI(playerIndex)
	elseif event.element.name == "DyTech-Close-Button" then
		CoreGUI.closeGUI("DyTech", playerIndex)
		CoreGUI.CreateButton()
	end
end)

remote.add_interface("DyTech-Core",
{  
	ResetAll = function()
		for _,player in pairs(game.players) do
			player.force.reset_recipes()
			player.force.reset_technologies()
		end
	end,
  
	TestTrees = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				RemoteCalls.TestTrees(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			RemoteCalls.TestTrees(pIndex)
		end
	end,
  
	TestMapStart = function(pIndex)
		if pIndex == 0 then
			for i,_ in ipairs(game.players) do
				RemoteCalls.TestMapStart(i)
			end
		elseif game.players[pIndex] == nil then return
		else
			RemoteCalls.TestMapStart(pIndex)
		end
	end,
  
	Regenerate = function(name)
		RemoteCalls.Regenerate(name)
	end,
	
	Timer = function(name)
		return global.timer[name]
	end,
	
	Logger = function()
		game.make_file("Logger/Technologies.txt", serpent.block(global.Logger.Technology))
		game.make_file("Logger/RobotBuildEntity.txt", serpent.block(global.Logger.RobotBuildEntity))
		game.make_file("Logger/BuildEntity.txt", serpent.block(global.Logger.BuildEntity))
		game.make_file("Logger/PickedItems.txt", serpent.block(global.Logger.PickedItems))
		game.make_file("Logger/CanceledDeconstruction.txt", serpent.block(global.Logger.CanceledDeconstruction))
		game.make_file("Logger/MarkedForDeconstruction.txt", serpent.block(global.Logger.MarkedForDeconstruction))
		game.make_file("Logger/EntityDied.txt", serpent.block(global.Logger.EntityDied))
		game.make_file("Logger/RobotMinedItems.txt", serpent.block(global.Logger.RobotMinedItems))
		game.make_file("Logger/MinedItems.txt", serpent.block(global.Logger.MinedItems))
		game.make_file("Logger/CraftedItems.txt", serpent.block(global.Logger.CraftedItems))
		game.make_file("TimeStamp/RobotBuildEntity.txt", serpent.block(global.TimeStamp.RobotBuildEntity))
		game.make_file("TimeStamp/BuildEntity.txt", serpent.block(global.TimeStamp.BuildEntity))
		game.make_file("TimeStamp/PickedItems.txt", serpent.block(global.TimeStamp.PickedItems))
		game.make_file("TimeStamp/CanceledDeconstruction.txt", serpent.block(global.TimeStamp.CanceledDeconstruction))
		game.make_file("TimeStamp/MarkedForDeconstruction.txt", serpent.block(global.TimeStamp.MarkedForDeconstruction))
		game.make_file("TimeStamp/EntityDied.txt", serpent.block(global.TimeStamp.EntityDied))
		game.make_file("TimeStamp/RobotMinedItems.txt", serpent.block(global.TimeStamp.RobotMinedItems))
		game.make_file("TimeStamp/MinedItems.txt", serpent.block(global.TimeStamp.MinedItems))
		game.make_file("TimeStamp/CraftedItems.txt", serpent.block(global.TimeStamp.CraftedItems))
	end,
	
	TimerIncrease = function(Hour, Minute, Second)
		global.timer.hours = global.timer.hours + Hour
		global.timer.minutes = global.timer.minutes + Minute
		global.timer.seconds = global.timer.seconds + Second
	end,
	
	FindResources = function(Amount)
		RemoteCalls.CheckOreRatio(Amount)
	end,
	
	ChangeWind = function()
		local direction = math.random()
		game.wind_orientation = direction
		PlayerPrint(tostring(game.wind_orientation))
	end
})