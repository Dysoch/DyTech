module("AutoResearch", package.seeall)
require "scripts/functions"

function Startup() 
   global.Research = global.Research or game.forces.player.technologies
end

function AutoMode()
	global.Research = game.forces.player.technologies
	for name, tech in pairs(global.Research) do
	debug("level " .. tostring(getResearchLevel(name)))
		if not tech.researched then
		local setTech = setCurrentTech(tech);
			debug("set current tech to " .. setTech)
		break
		end
	end
end

function setCurrentTech(tech)
	for preReqName, prerequisite in pairs(tech.prerequisites) do
    debug("checking " .. tostring(preReqName))
		if not prerequisite.researched then
			return setCurrentTech(prerequisite)
		end
	end
	game.forces.player.current_research = tech.name
	return tech.name
end

function getResearchLevel(technology)
	local levels = {["science-pack-1"] = 1, ["science-pack-2"] = 2, ["science-pack-3"] = 3, ["alien-science-pack"] = 4}
	local level = 0
	local Tech = global.Research[technology]
	for _,t in pairs(Tech.researchunitingredients) do
		if levels[t.name] and levels[t.name] > level then
			level = levels[t.name]
		end
	end
	return level
end