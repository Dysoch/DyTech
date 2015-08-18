module("fs", package.seeall)
require "database/research-system"
require "scripts/rs-functions"

function Startup()
global.Temp = {}
global.ResearchSystem = {}
global.ResearchSystem.Unlocked = {}
global.ResearchSystem.RSAutomatic = false
global.ResearchSystem.RSManual = true
global.ResearchSystem.ToUnlock = {}
global.ResearchSystem.science = 0
global.ResearchSystem.Amount_Enabled = 0
global.ResearchSystem.Amount = 0
StartupResearchSystem()
global.Collectors = {}
global.Collectors.Range = 25
global.Collectors.Working = true
global.Collectors.Filtered = true
global.Collectors.AutomaticRange = false
global.Collectors.Amount = 0
global.Collectors.CollectorList = {}
global.Messages = true
InitTechnologyTable()
RSF.Amount_Of_Events()
end

function StartupCollectors()
global.Collectors = {}
global.Collectors.Range = 25
global.Collectors.Working = true
global.Collectors.Filtered = true
global.Collectors.AutomaticRange = false
global.Collectors.Amount = 0
global.Collectors.CollectorList = {}
end

function StartupResearchSystem()
	global.ResearchSystem.ItemUnlock = {}
	global.ResearchSystem.ItemUnlock = RSDatabase.ItemUnlock
	global.Temp.Amount = 1
	for RecipeName, sdt in pairs(global.ResearchSystem.ItemUnlock) do
		local info = global.ResearchSystem.ItemUnlock[RecipeName]
		info.Event = global.Temp.Amount
		global.Temp.Amount = global.Temp.Amount + 1
	end
end

function InitTechnologyTable()
    global.Technology = {}
    for name,tech in pairs(game.forces.player.technologies) do
	global.Technology[name] = {}
	global.Technology[name].Prerequisite = {}
        for prereqname,count in pairs(game.forces.player.technologies[name].prerequisites) do
			table.insert(global.Technology[name].Prerequisite,prereqname)
		end
        global.Technology[name].TechLevel = getResearchLevel(name)
        global.Technology[name].ScienceCount = game.forces.player.technologies[name].research_unit_count
		global.Technology[name].Started = false
		global.Technology[name].Finished = false
    end
end

function getResearchLevel(technology)
    local levels = {["science-pack-1"] = 1, ["science-pack-2"] = 2, ["science-pack-3"] = 3, ["alien-science-pack"] = 4}
    local level = 0
	local Tech = game.forces.player.technologies[technology]
    for _,t in pairs(Tech.research_unit_ingredients) do
        if levels[t.name] and levels[t.name] > level then
            level = levels[t.name]
		end
    end
    return level
end

function InitHalfwayTechnology(event)
	global.Technology[event.research.name] = {}
	global.Technology[event.research.name].Prerequisite = {}
    for prereqname,count in pairs(game.forces.player.technologies[event.research.name].prerequisites) do
		table.insert(global.Technology[event.research.name].Prerequisite,prereqname)
	end
    global.Technology[event.research.name].TechLevel = getResearchLevel(event.research.name)
    global.Technology[event.research.name].ScienceCount = game.forces.player.technologies[event.research.name].research_unit_count
	global.Technology[event.research.name].Started = false
	global.Technology[event.research.name].Finished = false
end