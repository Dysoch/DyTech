module("Trees", package.seeall)
require("util")

RubberTree = {
	["name"] = "RubberTree",
	["states"] = {"rubber-seed", "small-rubber-tree", "medium-rubber-tree", "mature-rubber-tree"},
	["output"] = {"resin", 3},
	["efficiency"] = { ["grass"] = 1.00, ["grass-medium"] = 1.50, ["grass-dry"] = 0.75, ["dirt"] = 1.25, ["dirt-dark"] = 1.25, ["hills"] = 0.80, ["sand"] = 0.25, ["sand-dark"] = 0.25, ["other"] = 0 }, 
	["basicGrowingTime"] = 5925,
	["randomGrowingTime"] = 3555,
	["fertilizerBoost"] = 1.45,
	}
SulfurTree = {
	["name"] = "SulfurTree",
	["states"] = { "sulfur-seed", "small-sulfur-tree", "medium-sulfur-tree", "mature-sulfur-tree" },
	["output"] = {"sulfur-wood", 4},
	["efficiency"] = { ["grass"] = 0.75, ["grass-medium"] = 0.50, ["grass-dry"] = 1.5, ["dirt"] = 1.00, ["dirt-dark"] = 1.00, ["hills"] = 1.25, ["sand"] = 0.25, ["sand-dark"] = 0.25, ["other"] = 0 },
	["basicGrowingTime"] = 9000,
	["randomGrowingTime"] = 1500,
	["fertilizerBoost"] = 1.45,
	}

function OnInit()
    glob.tf = {}
	glob.tf.seedPrototypes = {}
	glob.tf.seedPrototypes = {RubberTree = {}, SulfurTree = {}}
	glob.tf.seedPrototypes.RubberTree = {
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
	basicGrowingTime = 5925,
	randomGrowingTime = 3555,
	fertilizerBoost = 1.45 }
	glob.tf.seedPrototypes.SulfurTree = {
	states = {
		"sulfur-seed",
		"small-sulfur-tree",
		"medium-sulfur-tree",
		"mature-sulfur-tree" },
	output = {"sulfur-wood", 4},
	efficiency = {
		["grass"] = 0.75,
		["grass-medium"] = 0.50,
		["grass-dry"] = 1.5,
		["dirt"] = 1.00,
		["dirt-dark"] = 1.00,
		["hills"] = 1.25,
		["sand"] = 0.25,
		["sand-dark"] = 0.25,
		["other"] = 0 },
	basicGrowingTime = 9000,
	randomGrowingTime = 1500,
	fertilizerBoost = 1.45 }
    populateSeedTypeLookUpTable()
    glob.tf.growing = {}
    glob.tf.playersData = {}
end

function OnLoad()
	if not glob.tf then
    glob.tf = {}
	glob.tf.seedPrototypes = {}
	glob.tf.seedPrototypes = {RubberTree = {}, SulfurTree = {}}
	glob.tf.seedPrototypes.RubberTree = {
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
	basicGrowingTime = 5925,
	randomGrowingTime = 3555,
	fertilizerBoost = 1.45 }
	glob.tf.seedPrototypes.SulfurTree = {
	states = {
		"sulfur-seed",
		"small-sulfur-tree",
		"medium-sulfur-tree",
		"mature-sulfur-tree" },
	output = {"sulfur-wood", 4},
	efficiency = {
		["grass"] = 0.75,
		["grass-medium"] = 0.50,
		["grass-dry"] = 1.5,
		["dirt"] = 1.0,
		["dirt-dark"] = 1.0,
		["hills"] = 1.25,
		["sand"] = 0.25,
		["sand-dark"] = 0.25,
		["other"] = 0 },
	basicGrowingTime = 9000,
	randomGrowingTime = 1500,
	fertilizerBoost = 1.45 }
    populateSeedTypeLookUpTable()
    glob.tf.growing = {}
    glob.tf.playersData = {}
	end
	if not glob.tf.seedPrototypes.SulfurTree then
		glob.tf.seedPrototypes.SulfurTree = {
		states = {
			"sulfur-seed",
			"small-sulfur-tree",
			"medium-sulfur-tree",
			"mature-sulfur-tree" },
		output = {"sulfur-wood", 4},
		efficiency = {
			["grass"] = 0.75,
			["grass-medium"] = 0.50,
			["grass-dry"] = 1.5,
			["dirt"] = 1.0,
			["dirt-dark"] = 1.0,
			["hills"] = 1.25,
			["sand"] = 0.25,
			["sand-dark"] = 0.25,
			["other"] = 0 },
		basicGrowingTime = 9000,
		randomGrowingTime = 1500,
		fertilizerBoost = 1.45 } 
		populateSeedTypeLookUpTable()
	end
end

function placeSeedIntoList(entInfo)
	if #glob.tf.growing > 1 then
		for i = #glob.tf.growing, 1, -1 do
			if glob.tf.growing[i].nextUpdate <= entInfo.nextUpdate then
				table.insert(glob.tf.growing, i + 1, entInfo)
				debug("next tree update not ready")
			return
			end
		end
		table.insert(glob.tf.growing, 1, entInfo)
	elseif #glob.tf.growing == 1 then
		if glob.tf.growing[1].nextUpdate > entInfo.nextUpdate then
			table.insert(glob.tf.growing, 1, entInfo)
			debug("next tree update ready")
		else
			table.insert(glob.tf.growing, entInfo)
			debug("next tree update not ready")
		end
	else
		table.insert(glob.tf.growing, entInfo)
		debug("next tree update not ready")
	end
end

function calcEfficiency(entity, fertilizerApplied)
  local seedType = seedTypeLookUpTable[entity.name]
  local currentTilename = game.gettile(entity.position.x, entity.position.y).name

  local efficiency
	if glob.tf.seedPrototypes[seedType].efficiency[currentTilename] == nil then
		return glob.tf.seedPrototypes[seedType].efficiency.other
	else
		efficiency = glob.tf.seedPrototypes[seedType].efficiency[currentTilename]
		if fertilizerApplied then
			return efficiency + glob.tf.seedPrototypes[seedType].fertilizerBoost
		else
		return efficiency
		end
	end
end

function getboundingbox(position, radius)
return {position.x-radius, position.y-radius}, {position.x+radius,position.y+radius} 
end