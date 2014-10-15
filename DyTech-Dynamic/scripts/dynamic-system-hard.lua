module("DynamicHard", package.seeall)
require "scripts/functions"

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 301 --[[This makes 5 minutes before the entire unlock and reward event start again]]--
eventtime = 60
function dsttime()
return (dstotalevents*eventtime) end

-- Unlocks range from 3 to 200
-- Rewards range from 201 to 299
-- Event 1, 2 and 300 are essentials! Its smart not to edit those!
-- These values will be increased when needed

--[[Dynamic System Unlock events!]]--
function dynamicUnlocks(event, ttime, r) 
	--[[This first event makes sure the latest counters from DyTech-Core are transfered here! They will be reset to there newest numbers everytime the loop starts again! This is an essential event!!! DO NOT MODIFY THIS!]]--
	if event.tick%ttime==(r*1) then
		fs.CounterTransfer()
		fs.EventFinish("event001")
	end
	--[[This second event checks which modules are installed. This is essential. If modified, errors will occur!!!! DO NOT MODIFY THIS!]]--
	if event.tick%ttime==(r*2) then
		fs.ModuleCheck()
		fs.EventFinish("event002")
	end
if glob.EventCheck.event001.done==true and glob.EventCheck.event002.done==true then
	if event.tick%ttime==(r*3) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["science-pack-1-dytech-1"]
	local LocaleName = game.getlocaliseditemname("science-pack-1")
		if not UnlockRecipe.enabled then 
			if glob.counter.science > math.random(200,600) and glob.counter.gear > math.random(600,2000) and game.player.force.technologies["automation"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("science", 1)
					fs.FailureReduction("gear", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-1").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event003")
				end
			end
		end
	end
	if event.tick%ttime==(r*4) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["science-pack-1-dytech-2"]
	local LocaleName = game.getlocaliseditemname("science-pack-1")
		if not UnlockRecipe.enabled then 
			if glob.counter.science > math.random(500,1200) and glob.counter.gear > math.random(1800,6000) and glob.EventCheck.event003.done==true and game.player.force.technologies["steel-processing"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("science", 1)
					fs.FailureReduction("gear", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-2").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event004")
				end
			end
		end
	end
	if event.tick%ttime==(r*5) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["basic-inserter-dytech-1"]
	local LocaleName = game.getlocaliseditemname("basic-inserter")
		if not UnlockRecipe.enabled then 
			if glob.counter.inserter > math.random(600,1200) and glob.counter.gear > math.random(1000,4000) and game.player.force.technologies["automation"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("inserter", 1)
					fs.FailureReduction("gear", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-1").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event005")
				end
			end
		end
	end
	if event.tick%ttime==(r*6) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["basic-inserter-dytech-2"]
	local LocaleName = game.getlocaliseditemname("basic-inserter")
		if not UnlockRecipe.enabled then 
			if glob.counter.inserter > math.random(1800,3600) and glob.counter.gear > math.random(3000,12000) and glob.EventCheck.event005.done==true and game.player.force.technologies["steel-processing"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("inserter", 1)
					fs.FailureReduction("gear", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-2").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event006")
				end
			end
		end
	end
	--[[DyTech-Automation Events!]]--
	--[[Tiered Burner Furnaces]]--
	if event.tick%ttime==(r*7) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk2"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(600,1600) and glob.counter.plates > math.random(600,4000) and glob.EventCheck015==true and game.player.force.technologies["advanced-material-processing"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event007")
				end
			end
		end
	end
	if event.tick%ttime==(r*8) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk3"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1200,3200) and glob.counter.plates > math.random(1200,8000) and glob.EventCheck016.done==true and glob.EventCheck.event007.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event008")
				end
			end
		end
	end
	if event.tick%ttime==(r*9) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk4"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2400,6400) and glob.counter.plates > math.random(2400,16000) and glob.EventCheck017.done==true and glob.EventCheck.event008.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event009")
				end
			end
		end
	end
	if event.tick%ttime==(r*10) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk5"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4800,12800) and glob.counter.plates > math.random(4800,32000) and glob.EventCheck018.done==true and glob.EventCheck.event009.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event010")
				end
			end
		end
	end
	--[[Tiered Electric Furnaces]]--
	if event.tick%ttime==(r*11) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk2"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(600,1600) and glob.counter.plates > math.random(600,4000) and glob.counter.tech > math.random(2000,4000) and glob.EventCheck015==true and game.player.force.technologies["advanced-material-processing-2"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event011")
				end
			end
		end
	end
	if event.tick%ttime==(r*12) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk3"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1200,3200) and glob.counter.plates > math.random(1200,8000) and glob.counter.tech > math.random(4000,8000) and glob.EventCheck016==true and glob.EventCheck.event011.true==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event012")
				end
			end
		end
	end
	if event.tick%ttime==(r*13) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk4"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2400,6400) and glob.counter.plates > math.random(2400,16000) and glob.counter.tech > math.random(8000,16000) and glob.EventCheck017.done==true and glob.EventCheck.event012.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event013")
				end
			end
		end
	end
	if event.tick%ttime==(r*14) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk5"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4800,12800) and glob.counter.plates > math.random(4800,32000) and glob.counter.tech > math.random(16000,32000) and glob.EventCheck018.done==true and glob.EventCheck.event013.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event014")
				end
			end
		end
	end
	--[[Intermediates of Automation. These are tiered and combined!]]--
	if event.tick%ttime==(r*15) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame1"]
	local LocaleName = game.getlocaliseditemname("frame1")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(800,1600) and glob.counter.plates > math.random(800,3200) and glob.counter.tech > math.random(1600,3200) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["blade1"].enabled = true
					game.player.force.recipes["rotor1"].enabled = true
					game.player.force.recipes["item-exit1"].enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event015")
				end
			end
		end
	end
	if event.tick%ttime==(r*16) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame2"]
	local LocaleName = game.getlocaliseditemname("frame2")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(1600,3200) and glob.counter.plates > math.random(1600,6400) and glob.counter.tech > math.random(3200,6400) and glob.EventCheck.event015.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["blade2"].enabled = true
					game.player.force.recipes["rotor2"].enabled = true
					game.player.force.recipes["item-exit2"].enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event016")
				end
			end
		end
	end
	if event.tick%ttime==(r*17) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame3"]
	local LocaleName = game.getlocaliseditemname("frame3")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(3200,6400) and glob.counter.plates > math.random(3200,12800) and glob.counter.tech > math.random(6400,12800) and glob.EventCheck.event016.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["blade3"].enabled = true
					game.player.force.recipes["rotor3"].enabled = true
					game.player.force.recipes["item-exit3"].enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event017")
				end
			end
		end
	end
	if event.tick%ttime==(r*18) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame4"]
	local LocaleName = game.getlocaliseditemname("frame4")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(6400,12800) and glob.counter.plates > math.random(12800,25600) and glob.counter.tech > math.random(12800,25600) and glob.EventCheck.event017.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["rotor4"].enabled = true
					game.player.force.recipes["item-exit4"].enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event018")
				end
			end
		end
	end
	--[[Tiered Radars]]--
	if event.tick%ttime==(r*19) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk2"]
	local LocaleName = game.getlocaliseditemname("radar-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2000,3200) and glob.counter.plates > math.random(4000,10000) and glob.counter.tech > math.random(4000,12000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event019")
				end
			end
		end
	end
	if event.tick%ttime==(r*20) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk3"]
	local LocaleName = game.getlocaliseditemname("radar-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4000,6400) and glob.counter.plates > math.random(8000,20000) and glob.counter.tech > math.random(8000,24000) and glob.EventCheck.event019.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event020")
				end
			end
		end
	end
	if event.tick%ttime==(r*21) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk4"]
	local LocaleName = game.getlocaliseditemname("radar-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(8000,12800) and glob.counter.plates > math.random(16000,40000) and glob.counter.tech > math.random(16000,48000) and glob.EventCheck.event020.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event021")
				end
			end
		end
	end
	if event.tick%ttime==(r*22) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk5"]
	local LocaleName = game.getlocaliseditemname("radar-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(16000,25600) and glob.counter.plates > math.random(32000,80000) and glob.counter.tech > math.random(32000,96000) and glob.EventCheck.event021.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event022")
				end
			end
		end
	end
	--[[Tiered Mining Drills]]--
	if event.tick%ttime==(r*23) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk2"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2000,4000) and glob.counter.plates > math.random(8000,20000) and glob.counter.mining > math.random(1200,2000) and glob.counter.resource > math.random(10000,20000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("mining", 1)
					fs.FailureReduction("resource", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event023")
				end
			end
		end
	end
	if event.tick%ttime==(r*24) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk3"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4000,8000) and glob.counter.plates > math.random(16000,40000) and glob.counter.mining > math.random(2400,4000) and glob.counter.resource > math.random(20000,40000) and glob.EventCheck.event023.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("mining", 1)
					fs.FailureReduction("resource", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event024")
				end
			end
		end
	end
	if event.tick%ttime==(r*25) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk4"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(8000,16000) and glob.counter.plates > math.random(32000,80000) and glob.counter.mining > math.random(4800,8000) and glob.counter.resource > math.random(40000,80000) and glob.EventCheck.event024.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("mining", 1)
					fs.FailureReduction("resource", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event025")
				end
			end
		end
	end
	if event.tick%ttime==(r*26) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk5"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(16000,32000) and glob.counter.plates > math.random(64000,160000) and glob.counter.mining > math.random(9600,16000) and glob.counter.resource > math.random(80000,160000) and glob.EventCheck.event025.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("mining", 1)
					fs.FailureReduction("resource", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event026")
				end
			end
		end
	end
	if event.tick%ttime==(r*27) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk6"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk6")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(48000,96000) and glob.counter.plates > math.random(256000,480000) and glob.counter.mining > math.random(32000,48000) and glob.counter.resource > math.random(200000,2000000) and glob.EventCheck.event026.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("mining", 1)
					fs.FailureReduction("resource", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event027")
				end
			end
		end
	end
	--[[Tiered Assembling Machines]]--
	if event.tick%ttime==(r*28) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-4"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2000,4000) and glob.counter.plates > math.random(5000,16000) and glob.counter.tech > math.random(6000,16000) and game.player.force.technologies["automation-3"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event028")
				end
			end
		end
	end
	if event.tick%ttime==(r*29) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-5"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4000,8000) and glob.counter.plates > math.random(10000,32000) and glob.counter.tech > math.random(12000,32000) and glob.EventCheck.event028.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event029")
				end
			end
		end
	end
	if event.tick%ttime==(r*30) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-6"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-6")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(8000,16000) and glob.counter.plates > math.random(20000,64000) and glob.counter.tech > math.random(24000,64000) and glob.EventCheck.event029.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event030")
				end
			end
		end
	end
	if event.tick%ttime==(r*31) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-7"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-7")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(16000,32000) and glob.counter.plates > math.random(40000,128000) and glob.counter.tech > math.random(48000,128000) and glob.EventCheck.event030.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", 1)
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-unlocked").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event031")
				end
			end
		end
	end
	--[[Basic Transport Belts Extra Recipes]]--
	if event.tick%ttime==(r*32) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["basic-transport-belt-dytech-1"]
	local LocaleName = game.getlocaliseditemname("basic-transport-belt")
		if not UnlockRecipe.enabled then 
			if glob.counter.belt > math.random(900,1800) and glob.counter.gear > math.random(1500,6000) and game.player.force.technologies["automation"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("belt", 1)
					fs.FailureReduction("gear", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-1").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event032")
				end
			end
		end
	end
	if event.tick%ttime==(r*33) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["basic-transport-belt-dytech-2"]
	local LocaleName = game.getlocaliseditemname("basic-transport-belt")
		if not UnlockRecipe.enabled then 
			if glob.counter.belt > math.random(1800,3600) and glob.counter.gear > math.random(3000,12000) and glob.EventCheck.event032.done==true and game.player.force.technologies["steel-processing"].researched then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("belt", 1)
					fs.FailureReduction("gear", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-2").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event033")
				end
			end
		end
	end
	--[[Copper Cable Extra Recipes]]--
	if event.tick%ttime==(r*34) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["copper-cable-dytech-1"]
	local LocaleName = game.getlocaliseditemname("copper-cable")
		if not UnlockRecipe.enabled then 
			if glob.counter.plates > math.random(3100,7200) and glob.counter.tech > math.random(6000,24000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-1").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event034")
				end
			end
		end
	end
	if event.tick%ttime==(r*35) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["copper-cable-dytech-2"]
	local LocaleName = game.getlocaliseditemname("copper-cable")
		if not UnlockRecipe.enabled then 
			if glob.counter.plates > math.random(7200,14400) and glob.counter.tech > math.random(12000,48000) and glob.EventCheck.event034.done==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("plates", 1)
					fs.FailureReduction("tech", 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-tier-2").." "..LocaleName)
					game.player.force.resetrecipes()
					fs.EventFinish("event035")
				end
			end
		end
	end
end
end

--[[Dynamic System Reward Events!]]--
function dynamicRewards(event, ttime, r)
if glob.EventCheck.event001.done==true and glob.EventCheck.event002.done==true then
	if event.tick%ttime==(r*201) then
		if not glob.EventCheck.event201.done then 
			if glob.counter.dytech > math.random(15000,22500) then
				game.player.insert{name="steel-axe",count=1}
				game.player.print(game.gettext("msg-reward-1"))
				fs.EventFinish("event201")
			end
		end
	end
	--[[This event will shutdown the Dynamic System when the player has called for it to go off, while it was running. This will always be the last event!!!]]--
	if event.tick%ttime==(r*300) then
		glob.EventCheck.event001.done = false
		glob.EventCheck.event002.done = false
		if glob.SystemShutoff==true then
			glob.DynamicSystem = false
			glob.SystemShutoff = false
			game.player.print("Dynamic System has finished its loop. The System has now shut down!!! Technologies however won't return! It's a shame to see you go :(")
		end
	end
end
end

--[[Function to determine if a dynamic failure occurs]]--
function DynamicFailure(counter)
    local basePercent = 0.25 -- failure rate [0,1] at counter=0
    local minPercent = 0.05 -- minimum failure rate [0,1] at arbitraryMax
    local arbitraryMax = 100000 -- when you want the failure rate to stop decreasing.
    -- normalization between 0 and arbitraryMax, with cap at arbitraryMax of 1
    local normalCounter = math.min(counter/arbitraryMax, 1)
    -- if the above was 1 then this will make normalCounter = minPercent, else some percent on a linear curve between base and min.
    normalCounter = basePercent-(normalCounter*(basePercent-minPercent))
    if math.random() < normalCounter then
        return true
    else
        return false
    end
end