module("Trees", package.seeall)
require("util")

function OnInit()
glob.compatibility={treefarm=false}
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

function OnLoad()
	if not glob.compatibility then glob.compatibility={treefarm=false} end
	if not glob.compatibility.treefarm then glob.compatibility.treefarm=false end
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