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

function placeSeedIntoList(entInfo, seedTypeName)
	if #glob.trees.isGrowing[seedTypeName] > 1 then
		for i = #glob.trees.isGrowing[seedTypeName], 1, -1 do
			if glob.trees.isGrowing[seedTypeName][i].nextUpdate <= entInfo.nextUpdate then
				table.insert(glob.trees.isGrowing[seedTypeName], i + 1, entInfo)
				return
			end
		end
		table.insert(glob.trees.isGrowing[seedTypeName], 1,  entInfo)
		return
	elseif #glob.trees.isGrowing[seedTypeName] == 1 then
		if glob.trees.isGrowing[seedTypeName][1].nextUpdate > entInfo.nextUpdate then
			table.insert(glob.trees.isGrowing[seedTypeName], 1,  entInfo)
			return
		else
			table.insert(glob.trees.isGrowing[seedTypeName], entInfo)
			return
		end
	else
		table.insert(glob.trees.isGrowing[seedTypeName], entInfo)
		return
	end
	table.insert(glob.trees.isGrowing[seedTypeName], entInfo)
end

function calcEfficiency(entity, fertilizerApplied)
	local seedType = seedTypeLookUpTable[entity.name]
	local currentTilename = game.gettile(entity.position.x, entity.position.y).name

	local efficiency
	if glob.trees.seedTypes[seedType].efficiency[currentTilename] == nil then
		return glob.trees.seedTypes[seedType].efficiency.other
	else
		efficiency = glob.trees.seedTypes[seedType].efficiency[currentTilename]
		if fertilizerApplied then
			return efficiency + glob.trees.seedTypes[seedType].fertilizerBoost
		else
			return efficiency
		end
	end
end

function getboundingbox(position, radius)
return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius} end