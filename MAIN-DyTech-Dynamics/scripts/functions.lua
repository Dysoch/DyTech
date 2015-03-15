module("fs", package.seeall)

function Startup()
   if not game.forces.player.currentresearch and game.forces.player.technologies["automation"].researched==false then
      game.forces.player.currentresearch = "automation"
   end
glob.Unlocked = {}
glob.RSAutomatic = false
glob.RSManual = true
glob.ToUnlock = {}
glob.science=0
end

function InitTechnologyTable()
    glob.Technology = {}
    for name,tech in pairs(game.forces.player.technologies) do
	glob.Technology[name] = {}
	glob.Technology[name].Prerequisite = {}
        for prereqname,count in pairs(game.forces.player.technologies[name].prerequisites) do
			table.insert(glob.Technology[name].Prerequisite,prereqname)
		end
        glob.Technology[name].TechLevel = getResearchLevel(name)
        glob.Technology[name].ScienceCount = game.forces.player.technologies[name].researchunitcount
    end
end

function getResearchLevel(technology)
    local levels = {["science-pack-1"] = 1, ["science-pack-2"] = 2, ["science-pack-3"] = 3, ["alien-science-pack"] = 4}
    local level = 0
	local Tech = game.forces.player.technologies[technology]
    for _,t in pairs(Tech.researchunitingredients) do
        if levels[t.name] and levels[t.name] > level then
            level = levels[t.name]
		end
    end
    return level
end