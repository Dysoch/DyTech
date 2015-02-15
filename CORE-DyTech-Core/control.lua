require "defines"
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
	--DyTechOnInit = false
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

game.onevent(defines.events.onbuiltentity, function(event)
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
	end
})