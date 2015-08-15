module("AutoResearch", package.seeall)
require "scripts/functions"

function Startup() 
	if not global.AutoResearcher then global.AutoResearcher = {} end
	if not global.AutoResearcher.Check then global.AutoResearcher.Check = 0 end
	if not global.AutoResearcher.State then global.AutoResearcher.State = true end
	if not global.AutoResearcher.Tier1 then global.AutoResearcher.Tier1 = true end
	if not global.AutoResearcher.Tier2 then global.AutoResearcher.Tier2 = false end
	if not global.AutoResearcher.Tier3 then global.AutoResearcher.Tier3 = false end
	if not global.AutoResearcher.Tier4 then global.AutoResearcher.Tier4 = false end
end

function AutoMode(TECH)
	if global.AutoResearcher.Tier1 and global.Technology[TECH].TechLevel==1 then
		if PreReqCheck(TECH) then
			game.forces.player.current_research = TECH
			global.AutoResearcher.Check = 0
			return
		else
			Select_New_Tech()
		end
	elseif global.AutoResearcher.Tier2 and global.Technology[TECH].TechLevel==2 then
		if PreReqCheck(TECH) then
			game.forces.player.current_research = TECH
			global.AutoResearcher.Check = 0
			return
		else
			Select_New_Tech()
		end
	elseif global.AutoResearcher.Tier3 and global.Technology[TECH].TechLevel==3 then
		if PreReqCheck(TECH) then
			game.forces.player.current_research = TECH
			global.AutoResearcher.Check = 0
			return
		else
			Select_New_Tech()
		end
	elseif global.AutoResearcher.Tier4 and global.Technology[TECH].TechLevel==4 then
		if PreReqCheck(TECH) then
			game.forces.player.current_research = TECH
			global.AutoResearcher.Check = 0
			return
		else
			Select_New_Tech()
		end
	elseif global.AutoResearcher.Check > 150 then
		global.AutoResearcher.Check = 0
		PlayerPrint({"auto-researcher-overflow"})
		return
	elseif global.AutoResearcher.Check < 150 then
		Select_New_Tech()
		global.AutoResearcher.Check = global.AutoResearcher.Check + 1
	end
end

function Select_New_Tech()
	if Empty_Table_Check(global.Auto_Researcher) then 
		PlayerPrint({"auto-researcher-finished"}) 
	else
		local TECH=global.Auto_Researcher[math.random(#global.Auto_Researcher)]
		AutoMode(TECH)
	end
end

function Empty_Table_Check(self)
    for _, _ in pairs(self) do
        return false
    end
    return true
end

function PreReqCheck(TECH)
	global.temp = {}
	global.temp.True = 0
	global.temp.index = 0
	if global.Technology[TECH].Prerequisite ~= nil then
		for Index, Name in pairs(global.Technology[TECH].Prerequisite) do
			global.temp.index = global.temp.index + 1
			if global.Technology[Name].Finished then 
				global.temp.True = global.temp.True + 1
			end
		end
		if global.temp.True == global.temp.index then return true end
	end
end

function showAutoResearcherGUI(PlayerIndex)
	if global.AutoResearcher.State==nil then global.AutoResearcher.State = true end
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name=guiNames.mainAutoResearcherFlow})
player.gui.top[guiNames.mainAutoResearcherFlow].add({type="frame", direction="vertical", name=guiNames.mainAutoResearcherFrame, caption={"auto-researcher"}})
adder = player.gui.top[guiNames.mainAutoResearcherFlow][guiNames.mainAutoResearcherFrame]
adder.add({type= "checkbox", caption={"auto-researcher-state"}, name="auto-researcher-state", state = global.AutoResearcher.State})
adder.add({type= "checkbox", caption={"auto-researcher-tier-1"}, name="auto-researcher-tier-1", state = global.AutoResearcher.Tier1})
adder.add({type= "checkbox", caption={"auto-researcher-tier-2"}, name="auto-researcher-tier-2", state = global.AutoResearcher.Tier2})
adder.add({type= "checkbox", caption={"auto-researcher-tier-3"}, name="auto-researcher-tier-3", state = global.AutoResearcher.Tier3})
adder.add({type= "checkbox", caption={"auto-researcher-tier-4"}, name="auto-researcher-tier-4", state = global.AutoResearcher.Tier4})
adder.add({type= "label", caption={"auto-researcher-explenation-1"}, name=""})
--adder.add({type= "label", caption={"auto-researcher-explenation-2"}, name=""})
--adder.add({type= "label", caption={"auto-researcher-explenation-3"}, name=""})
adder.add({type= "label", caption={"auto-researcher-explenation-4"}, name=""})
adder.add({type="button", name="DyTech-Dynamics-Back-Button", caption={"back"}})
end