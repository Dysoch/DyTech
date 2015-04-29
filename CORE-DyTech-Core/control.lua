require "defines"
require "scripts/functions"
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
  for seedTypeName, seedType in pairs(glob.tf.seedPrototypes) do
    for _, stateName in pairs(seedType.states) do
      seedTypeLookUpTable[stateName] = seedTypeName
    end
  end
end

game.oninit(function()
	if not remote.interfaces["treefarm_interface"] then 
		debug("Treefarm not installed")
		Trees.OnInit()
	elseif remote.interfaces.treefarm_interface and remote.interfaces.treefarm_interface.getSeedTypesData then
		remote.call("treefarm_interface", "addSeed", Trees.RubberTree)
		remote.call("treefarm_interface", "addSeed", Trees.SulfurTree)
	end
fs.Startup()
end)

game.onsave(function()

end)

game.onload(function()
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
end)

game.onevent(defines.events.ontick, function(event)
	fs.Timer(event)
	--if not DyTechOnInit then
		--DyTechOnInit = true
	--end
	if not remote.interfaces["treefarm_interface"] then
	while ((glob.tf.growing[1] ~= nil) and (event.tick >= glob.tf.growing[1].nextUpdate)) do
    local removedEntity = table.remove(glob.tf.growing, 1)
    local seedTypeName
    local newState
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
		if removedEntity.entity.valid then
			seedTypeName = seedTypeLookUpTable[removedEntity.entity.name]
			newState = removedEntity.state + 1
			if newState <= #glob.tf.seedPrototypes[seedTypeName].states then
			local tmpPos = removedEntity.entity.position
			local newEnt = game.createentity{name = glob.tf.seedPrototypes[seedTypeLookUpTable[removedEntity.entity.name]].states[newState], position = tmpPos}
			removedEntity.entity.destroy()
			debug("Old tree removed, new one placed")
			local deltaTime = math.ceil((math.random() * glob.tf.seedPrototypes[seedTypeName].randomGrowingTime + glob.tf.seedPrototypes[seedTypeName].basicGrowingTime) / removedEntity.efficiency)
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

game.onevent(defines.events.onplayercrafteditem, function(event)
	fs.CraftedItemsLogger(event.itemstack.name, event.itemstack.count)
end)

game.onevent(defines.events.onplayermineditem, function(event)
	fs.MinedItemsLogger(event.itemstack.name, event.itemstack.count)
end)

game.onevent(defines.events.onrobotmined, function(event)
	fs.RobotMinedItemsLogger(event.itemstack.name, event.itemstack.count)
end)

game.onevent(defines.events.onentitydied, function(event)
	fs.EntityDiedLogger(event.entity.name)
end)

game.onevent(defines.events.onsectorscanned, function(event)
	fs.SectorScannedLogger()
end)

game.onevent(defines.events.onmarkedfordeconstruction, function(event)
	fs.MarkedForDeconstructionLogger(event.entity.name)
end)

game.onevent(defines.events.oncanceleddeconstruction, function(event)
	fs.CanceledDeconstructionLogger(event.entity.name)
end)

game.onevent(defines.events.onpickedupitem, function(event)
	fs.PickedItemsLogger(event.itemstack.name, event.itemstack.count)
end)

game.onevent(defines.events.onresearchstarted, function(event)
	fs.TechLogger("started", event.research)
end)

game.onevent(defines.events.onresearchfinished, function(event)
	fs.TechLogger("finished", event.research)
end)

game.onevent(defines.events.onbuiltentity, function(event)
	fs.BuildEntityLogger(event.entity.name)
local player = game.players[event.playerindex]
	if not remote.interfaces["treefarm_interface"] then
	if event.createdentity.type == "tree" then
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
	debug("tree created (player "..tostring(event.playerindex)..")")
    local currentSeedTypeName = seedTypeLookUpTable[event.createdentity.name]
		if currentSeedTypeName ~= nil then
		debug("currentSeedTypeName = nil")
		local newEfficiency = Trees.calcEfficiency(event.createdentity, false)
		local deltaTime = math.ceil((math.random() * glob.tf.seedPrototypes[currentSeedTypeName].randomGrowingTime + glob.tf.seedPrototypes[currentSeedTypeName].basicGrowingTime) / newEfficiency)
		local nextUpdateIn = event.tick + deltaTime
		local entInfo =
		{
			entity = event.createdentity,
			state = 1,
			efficiency = newEfficiency,
			nextUpdate = nextUpdateIn
		}
		Trees.placeSeedIntoList(entInfo)
		debug("seed placed into list (player "..tostring(event.playerindex)..")")
		return
		debug("return")
		end
	end end
end)

game.onevent(defines.events.onrobotbuiltentity, function(event)
	fs.RobotBuildEntityLogger(event.entity.name)
local player = game.players[event.playerindex]
	if not remote.interfaces["treefarm_interface"] then
	if event.createdentity.type == "tree" then
	if seedTypeLookUpTable==nil then populateSeedTypeLookUpTable() end
	debug("tree created (Robot)")
    local currentSeedTypeName = seedTypeLookUpTable[event.createdentity.name]
		if currentSeedTypeName ~= nil then
		debug("currentSeedTypeName ~= nil")
		local newEfficiency = Trees.calcEfficiency(event.createdentity, false)
		local deltaTime = math.ceil((math.random() * glob.tf.seedPrototypes[currentSeedTypeName].randomGrowingTime + glob.tf.seedPrototypes[currentSeedTypeName].basicGrowingTime) / newEfficiency)
		local nextUpdateIn = event.tick + deltaTime
		local entInfo =
		{
			entity = event.createdentity,
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

game.onevent(defines.events.onchunkgenerated, function(event)
	if not glob.Logger.ChunkGenerated then 
		glob.Logger.ChunkGenerated = 1
	else
		glob.Logger.ChunkGenerated = glob.Logger.ChunkGenerated + 1
	end
	if debug_chunks then debug("Chunk Generated, chunks counter is now "..tostring(glob.Logger.ChunkGenerated)) end
end)

remote.addinterface("DyTech-Core",
{  
	ResetAll = function()
		game.force.resettechnologies()
		game.force.resetrecipes()
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
  
	Regenerate = function(name)
		RemoteCalls.Regenerate(name)
	end,
	
	Timer = function(name)
		return glob.timer[name]
	end,
	
	Logger = function()
		game.makefile("Logger/Technologies.txt", serpent.block(glob.Logger.Technology))
		game.makefile("Logger/RobotBuildEntity.txt", serpent.block(glob.Logger.RobotBuildEntity))
		game.makefile("Logger/BuildEntity.txt", serpent.block(glob.Logger.BuildEntity))
		game.makefile("Logger/PickedItems.txt", serpent.block(glob.Logger.PickedItems))
		game.makefile("Logger/CanceledDeconstruction.txt", serpent.block(glob.Logger.CanceledDeconstruction))
		game.makefile("Logger/MarkedForDeconstruction.txt", serpent.block(glob.Logger.MarkedForDeconstruction))
		game.makefile("Logger/EntityDied.txt", serpent.block(glob.Logger.EntityDied))
		game.makefile("Logger/RobotMinedItems.txt", serpent.block(glob.Logger.RobotMinedItems))
		game.makefile("Logger/MinedItems.txt", serpent.block(glob.Logger.MinedItems))
		game.makefile("Logger/CraftedItems.txt", serpent.block(glob.Logger.CraftedItems))
		game.makefile("TimeStamp/RobotBuildEntity.txt", serpent.block(glob.TimeStamp.RobotBuildEntity))
		game.makefile("TimeStamp/BuildEntity.txt", serpent.block(glob.TimeStamp.BuildEntity))
		game.makefile("TimeStamp/PickedItems.txt", serpent.block(glob.TimeStamp.PickedItems))
		game.makefile("TimeStamp/CanceledDeconstruction.txt", serpent.block(glob.TimeStamp.CanceledDeconstruction))
		game.makefile("TimeStamp/MarkedForDeconstruction.txt", serpent.block(glob.TimeStamp.MarkedForDeconstruction))
		game.makefile("TimeStamp/EntityDied.txt", serpent.block(glob.TimeStamp.EntityDied))
		game.makefile("TimeStamp/RobotMinedItems.txt", serpent.block(glob.TimeStamp.RobotMinedItems))
		game.makefile("TimeStamp/MinedItems.txt", serpent.block(glob.TimeStamp.MinedItems))
		game.makefile("TimeStamp/CraftedItems.txt", serpent.block(glob.TimeStamp.CraftedItems))
	end,
	
	TimerIncrease = function(Hour, Minute, Second)
		glob.timer.hours = glob.timer.hours + Hour
		glob.timer.minutes = glob.timer.minutes + Minute
		glob.timer.seconds = glob.timer.seconds + Second
	end
})