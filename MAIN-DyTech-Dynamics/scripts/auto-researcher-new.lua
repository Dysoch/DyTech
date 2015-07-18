module("AutoResearch", package.seeall)
require "scripts/functions"

function Startup() 
	global.Research = global.Research or game.forces.player.technologies
	if not global.AutoTechLevel then 
		global.AutoTechLevel = 
		{
			levels = { [1] = {}, [2] = {}, [3] = {}, [4] = {} },
			leveled = { [1] = {}, [2] = {}, [3] = {}, [4] = {} },
			count = 0
		}
		IncreaseAutoTechLevel()
	end
end

function AutoMode()
	Startup()
	local minResearchLevel = getMinResearchLevel()
	if minResearchLevel ~= -1 then
		for name, tech in pairs (global.Research) do
			if not tech.researched and getResearchLevel(tech) == minResearchLevel then
			-- set tech to be researched (or a needed prereq)
			local setTech = setCurrentTech(tech);
			debug("set current tech to " .. setTech)
			-- we just set a tech to be researched so stop checking
			break
			end
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


function getMinResearchLevel()
  for level, info in ipairs(global.AutoTechLevel.levels) do
    if info.count != info.maxCount then
      return level
    end
  end
  -- all leveled techs researched
  return -1
end

  
