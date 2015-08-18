require "defines"
require "config"
require "scripts/functions"
require "scripts/gui"
require "scripts/remote-calls"
require "scripts/trees"


--[[Debug Functions]]--
debug_master = false -- Master switch for debugging, shows most things!
debug_for_GUI = true -- Adds a debug screen in the gui
debug_ontick = false -- Ontick switch for debugging, shows all ontick event debugs
debug_chunks = false -- shows the chunks generated with this on
function debug(str, statement)
	if debug_master then
		PlayerPrint(str)
	end
	if log_everything then log(str, statement) end
end
log_everything = true -- keep this true all times! only disable if the game lags. the info it generates is needed by the DyTech Team to debug your savegame if an bug or error happens!
function log(str, statement)
local seconds = math.floor(game.tick/60)
local minutes = math.floor(seconds/60)
local hours = math.floor(minutes/60)
	if not global.Log then global.Log = {} end
	if not statement then
		global.Log[hours..":"..(minutes-(hours*60))..":"..(seconds-(minutes*60))] = str
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
	fs.World_Call()
	fs.Wind_Startup()
end)

game.on_save(function()

end)

game.on_load(function()
	if not remote.interfaces["treefarm_interface"] then 
	debug("Treefarm not installed")
		Trees.OnLoad()
	elseif remote.interfaces["treefarm_interface"] and remote.interfaces.treefarm_interface.getSeedTypesData then
	debug("Trees: Treefarm Found")
		if not remote.call("treefarm_interface", "readSeed", "RubberTree") then
			remote.call("treefarm_interface", "addSeed", Trees.RubberTree)
			debug("Trees: Rubber Tree Moved to Treefarm")
		end
		if not remote.call("treefarm_interface", "readSeed", "SulfurTree") then
			remote.call("treefarm_interface", "addSeed", Trees.SulfurTree)
			debug("Trees: Sulfur Tree Moved to Treefarm")
		end
	end
	CoreGUI.CreateButton()
	if not global.Wind then fs.Wind_Startup() end
end)

game.on_event(defines.events.on_tick, function(event)
	if event.tick%global.Wind.Value==(global.Wind.Value-1) then
		game.wind_orientation = math.random()
		global.Wind.Value = math.random(global.Wind.Low,global.Wind.High)
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
			local newEnt = game.get_surface("nauvis").create_entity{name = global.tf.seedPrototypes[seedTypeLookUpTable[removedEntity.entity.name]].states[newState], position = tmpPos}
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

game.on_event(defines.events.on_built_entity, function(event)
	fs.BuildEntityLogger(event.created_entity.name)
local player = game.players[event.player_index]
	if not remote.interfaces["treefarm_interface"] then
	if event.created_entity.type == "tree" then
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
	debug("tree created (player "..tostring(event.player_index)..")")
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
	if not global.Logger then fs.Startup() end
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
	debug("GUI: Player "..playerIndex.." clicked "..event.element.name)
	if event.element.name == "DyTech-Button" then
		player.gui.top["DyTech-Button"].destroy()
		CoreGUI.showDyTechGUI(playerIndex)
	elseif event.element.name == "DyTech-Debug-Button" then
		CoreGUI.closeGUI("DyTech", playerIndex)
		CoreGUI.showDyTechDebugGUI(playerIndex)
	elseif event.element.name == "DyTech-Debug-Dump-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		remote.call("DyTech-Core", "Logger")
		if remote.interfaces["DyTech-Dynamics"] then remote.call("DyTech-Dynamics", "DataDump") end
		if remote.interfaces["DyTech-Machine"] then remote.call("DyTech-Machine", "DataDump") end
		if remote.interfaces["DyTech-Power"] then remote.call("DyTech-Power", "DataDump") end
		if remote.interfaces["DyTech-War"] then remote.call("DyTech-War", "DataDump") end
		if remote.interfaces["DyTech-World"] then remote.call("DyTech-World", "Logger") end
	elseif event.element.name == "DyTech-Debug-TestItems-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		RemoteCalls.TestMapStart(playerIndex)
	elseif event.element.name == "DyTech-Debug-TestResource-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		RemoteCalls.CheckOreRatio(500, playerIndex)
	elseif event.element.name == "DyTech-Debug-Reset-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		remote.call("DyTech-Core", "ResetAll")
	elseif event.element.name == "DyTech-Debug-Technology-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		fs.ResearchAll()
	elseif event.element.name == "DyTech-Debug-Evolution-0-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		game.evolution_factor = 0
	elseif event.element.name == "DyTech-Debug-Evolution-1-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
		game.evolution_factor = 1
	elseif event.element.name == "DyTech-Close-Button" then
		CoreGUI.closeGUI("All", playerIndex)
		CoreGUI.CreateButton()
	end
end)

--[[game.on_event(defines.events.on_gui_click, function(event)
local playerIndex = event.player_index
local player = game.players[playerIndex]
	if event.element.name == "DyTech-Power-Button" then
		remote.call("DyTech-Core", "CloseMainGUI", playerIndex)
		-- open de Power gui hier
	end
end)]]--

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
		game.makefile("DyTech/DataDump/Core-Wind.txt", serpent.block(global.Wind))
		game.makefile("DyTech/DataDump/Core-Technologies.txt", serpent.block(global.Logger.Technology))
		game.makefile("DyTech/DataDump/Core-RobotBuildEntity.txt", serpent.block(global.Logger.RobotBuildEntity))
		game.makefile("DyTech/DataDump/Core-BuildEntity.txt", serpent.block(global.Logger.BuildEntity))
		game.makefile("DyTech/DataDump/Core-PickedItems.txt", serpent.block(global.Logger.PickedItems))
		game.makefile("DyTech/DataDump/Core-CanceledDeconstruction.txt", serpent.block(global.Logger.CanceledDeconstruction))
		game.makefile("DyTech/DataDump/Core-MarkedForDeconstruction.txt", serpent.block(global.Logger.MarkedForDeconstruction))
		game.makefile("DyTech/DataDump/Core-EntityDied.txt", serpent.block(global.Logger.EntityDied))
		game.makefile("DyTech/DataDump/Core-RobotMinedItems.txt", serpent.block(global.Logger.RobotMinedItems))
		game.makefile("DyTech/DataDump/Core-MinedItems.txt", serpent.block(global.Logger.MinedItems))
		game.makefile("DyTech/DataDump/Core-CraftedItems.txt", serpent.block(global.Logger.CraftedItems))
		game.makefile("DyTech/DataDump/TimeStamp/Core-RobotBuildEntity.txt", serpent.block(global.TimeStamp.RobotBuildEntity))
		game.makefile("DyTech/DataDump/TimeStamp/Core-BuildEntity.txt", serpent.block(global.TimeStamp.BuildEntity))
		game.makefile("DyTech/DataDump/TimeStamp/Core-PickedItems.txt", serpent.block(global.TimeStamp.PickedItems))
		game.makefile("DyTech/DataDump/TimeStamp/Core-CanceledDeconstruction.txt", serpent.block(global.TimeStamp.CanceledDeconstruction))
		game.makefile("DyTech/DataDump/TimeStamp/Core-MarkedForDeconstruction.txt", serpent.block(global.TimeStamp.MarkedForDeconstruction))
		game.makefile("DyTech/DataDump/TimeStamp/Core-EntityDied.txt", serpent.block(global.TimeStamp.EntityDied))
		game.makefile("DyTech/DataDump/TimeStamp/Core-RobotMinedItems.txt", serpent.block(global.TimeStamp.RobotMinedItems))
		game.makefile("DyTech/DataDump/TimeStamp/Core-MinedItems.txt", serpent.block(global.TimeStamp.MinedItems))
		game.makefile("DyTech/DataDump/TimeStamp/Core-CraftedItems.txt", serpent.block(global.TimeStamp.CraftedItems))
		game.makefile("DyTech/Log/Core.txt", serpent.block(global.Log))
		game.makefile("DyTech/Config/Core.txt", serpent.block(Config))
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
	end,
	
	OpenMainGUI = function(PlayerIndex)
		CoreGUI.showDyTechGUI(PlayerIndex)
	end,
	
	CloseMainGUI = function(PlayerIndex)
		CoreGUI.closeGUI("DyTech", PlayerIndex)
	end,
	
	ShowMainButton = function()
		CoreGUI.CreateButton()
	end,
	
	RecipesIngredients = function()
		RemoteCalls.RecipesIngredients()
	end
})