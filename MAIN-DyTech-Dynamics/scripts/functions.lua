module("fs", package.seeall)
require "config"
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
StartupResearchSystem1()
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

function StartupResearchSystem1()
	global.ResearchSystem.ItemUnlock = {}
	global.ResearchTemp2 = {}	
	var = 1
	for Name,Tech in pairs(game.forces.player.technologies) do 
		if game.forces.player.technologies[Name].effects then
			for i,Recipe in pairs(game.forces.player.technologies[Name].effects) do 
				if Recipe.recipe then
					global.ResearchTemp2[var] = {}
					global.ResearchTemp2[var].Recipe = Recipe.recipe
					global.ResearchTemp2[var].Points = math.random(math.floor(Tech.research_unit_count*0.75),math.floor(Tech.research_unit_count*1.25))
					global.ResearchTemp2[var].Tech = Name
					global.ResearchTemp2[var].Event = var
					var = var + 1
				end
			end 
		end
	end
	for I,Name in pairs(global.ResearchTemp2) do
		local recipe = global.ResearchTemp2[I].Recipe
		global.ResearchSystem.ItemUnlock[recipe] = {}
		global.ResearchSystem.ItemUnlock[recipe].Points = math.random(math.floor(Name.Points*0.5),math.floor(Name.Points*1.5))
		global.ResearchSystem.ItemUnlock[recipe].Tech = Name.Tech
		global.ResearchSystem.ItemUnlock[recipe].Event = Name.Event
		global.ResearchSystem.ItemUnlock[recipe].Tier = getResearchLevel(Name.Tech)
	end
	game.makefile("DyTech/DataDump/Dynamics-ResearchSystem-ItemUnlock.txt", serpent.block(global.ResearchSystem.ItemUnlock))
	game.makefile("DyTech/DataDump/Dynamics-Temper.txt", serpent.block(global.temper))
	game.makefile("DyTech/DataDump/Dynamics-ResearchTemp2.txt", serpent.block(global.ResearchTemp2))
	if Config.Research_System then	
		game.forces.player.disable_research()
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