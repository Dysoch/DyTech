module("Dynamic", package.seeall)
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
		glob.EventCheck.event001 = true
	end
	--[[This second event checks which modules are installed. This is essential. If modified, errors will occur!!!! DO NOT MODIFY THIS!]]--
	if event.tick%ttime==(r*2) then
		fs.ModuleCheck()
		glob.EventCheck.event002 = true
	end
if glob.EventCheck.event001==true and glob.EventCheck.event002==true then
	if event.tick%ttime==(r*3) and glob.modules.core==true then  
	local UnlockRecipe = game.player.force.recipes["science-pack-1-dytech-1"]
	local LocaleName = game.getlocaliseditemname("science-pack-1")
		if not UnlockRecipe.enabled then 
			if glob.counter.science > math.random(50,150) and glob.counter.gear > math.random(150,500) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("science", glob.counter.science, 4)
					fs.FailureReduction("gear", glob.counter.gear, 4)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-science-1").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event003 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*4) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["science-pack-1-dytech-2"]
	local LocaleName = game.getlocaliseditemname("science-pack-1")
		if not UnlockRecipe.enabled then 
			if glob.counter.science > math.random(125,300) and glob.counter.gear > math.random(450,1500) and glob.EventCheck.event003==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("science", glob.counter.science, 3)
					fs.FailureReduction("gear", glob.counter.gear, 3)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-science-2").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event004 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*5) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["basic-inserter-dytech-1"]
	local LocaleName = game.getlocaliseditemname("basic-inserter")
		if not UnlockRecipe.enabled then 
			if glob.counter.inserter > math.random(150,300) and glob.counter.gear > math.random(250,1000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("inserter", glob.counter.inserter, 3)
					fs.FailureReduction("gear", glob.counter.gear, 3)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-inserter-1").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event005 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*6) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["basic-inserter-dytech-2"]
	local LocaleName = game.getlocaliseditemname("basic-inserter")
		if not UnlockRecipe.enabled then 
			if glob.counter.inserter > math.random(450,900) and glob.counter.gear > math.random(750,3000) and glob.EventCheck.event005==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("inserter", glob.counter.inserter, 3)
					fs.FailureReduction("gear", glob.counter.gear, 3)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-inserter-2").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event006 = true
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
			if glob.counter.machine > math.random(150,400) and glob.counter.plates > math.random(150,1000) and glob.EventCheck015==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 10)
					fs.FailureReduction("plates", glob.counter.plates, 10)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-01").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event007 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*8) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk3"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(300,800) and glob.counter.plates > math.random(300,2000) and glob.EventCheck016==true and glob.EventCheck.event007==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 8)
					fs.FailureReduction("plates", glob.counter.plates, 8)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-02").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event008 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*9) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk4"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(600,1600) and glob.counter.plates > math.random(600,4000) and glob.EventCheck017==true and glob.EventCheck.event008==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 6)
					fs.FailureReduction("plates", glob.counter.plates, 6)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-03").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event009 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*10) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["steel-furnace-mk5"]
	local LocaleName = game.getlocaliseditemname("steel-furnace-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1200,3200) and glob.counter.plates > math.random(1200,8000) and glob.EventCheck018==true and glob.EventCheck.event009==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 4)
					fs.FailureReduction("plates", glob.counter.plates, 4)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-04").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event010 = true
				end
			end
		end
	end
	--[[Tiered Electric Furnaces]]--
	if event.tick%ttime==(r*11) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk2"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(150,400) and glob.counter.plates > math.random(150,1000) and glob.counter.tech > math.random(500,1000) and glob.EventCheck015==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 10)
					fs.FailureReduction("plates", glob.counter.plates, 10)
					fs.FailureReduction("tech", glob.counter.tech, 10)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-05").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event011 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*12) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk3"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(300,800) and glob.counter.plates > math.random(300,2000) and glob.counter.tech > math.random(1000,2000) and glob.EventCheck016==true and glob.EventCheck.event011==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 8)
					fs.FailureReduction("plates", glob.counter.plates, 8)
					fs.FailureReduction("tech", glob.counter.tech, 8)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-06").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event012 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*13) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk4"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(600,1600) and glob.counter.plates > math.random(600,4000) and glob.counter.tech > math.random(2000,4000) and glob.EventCheck017==true and glob.EventCheck.event012==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 6)
					fs.FailureReduction("plates", glob.counter.plates, 6)
					fs.FailureReduction("tech", glob.counter.tech, 6)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-07").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event013 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*14) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["electric-furnace-mk5"]
	local LocaleName = game.getlocaliseditemname("electric-furnace-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1200,3200) and glob.counter.plates > math.random(1200,8000) and glob.counter.tech > math.random(4000,8000) and glob.EventCheck018==true and glob.EventCheck.event013==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 4)
					fs.FailureReduction("plates", glob.counter.plates, 4)
					fs.FailureReduction("tech", glob.counter.tech, 4)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-08").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event014 = true
				end
			end
		end
	end
	--[[Intermediates of Automation. These are tiered and combined!]]--
	if event.tick%ttime==(r*15) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame1"]
	local LocaleName = game.getlocaliseditemname("frame1")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(200,400) and glob.counter.plates > math.random(200,800) and glob.counter.tech > math.random(400,800) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", glob.counter.gear, 10)
					fs.FailureReduction("plates", glob.counter.plates, 10)
					fs.FailureReduction("tech", glob.counter.tech, 10)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["blade1"].enabled = true
					game.player.force.recipes["rotor1"].enabled = true
					game.player.force.recipes["item-exit1"].enabled = true
					game.player.print(game.gettext("msg-automation-09").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event015 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*16) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame2"]
	local LocaleName = game.getlocaliseditemname("frame2")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(400,800) and glob.counter.plates > math.random(400,1600) and glob.counter.tech > math.random(800,1600) and glob.EventCheck.event015==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", glob.counter.gear, 8)
					fs.FailureReduction("plates", glob.counter.plates, 8)
					fs.FailureReduction("tech", glob.counter.tech, 8)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["blade2"].enabled = true
					game.player.force.recipes["rotor2"].enabled = true
					game.player.force.recipes["item-exit2"].enabled = true
					game.player.print(game.gettext("msg-automation-10").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event016 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*17) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame3"]
	local LocaleName = game.getlocaliseditemname("frame3")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(800,1600) and glob.counter.plates > math.random(800,3200) and glob.counter.tech > math.random(1600,3200) and glob.EventCheck.event016==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", glob.counter.gear, 6)
					fs.FailureReduction("plates", glob.counter.plates, 6)
					fs.FailureReduction("tech", glob.counter.tech, 6)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["blade3"].enabled = true
					game.player.force.recipes["rotor3"].enabled = true
					game.player.force.recipes["item-exit3"].enabled = true
					game.player.print(game.gettext("msg-automation-11").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event017 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*18) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["frame4"]
	local LocaleName = game.getlocaliseditemname("frame4")
		if not UnlockRecipe.enabled then 
			if glob.counter.gear > math.random(1600,3200) and glob.counter.plates > math.random(1600,6400) and glob.counter.tech > math.random(3200,6400) and glob.EventCheck.event017==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("gear", glob.counter.gear, 3)
					fs.FailureReduction("plates", glob.counter.plates, 3)
					fs.FailureReduction("tech", glob.counter.tech, 3)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.force.recipes["rotor4"].enabled = true
					game.player.force.recipes["item-exit4"].enabled = true
					game.player.print(game.gettext("msg-automation-12").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event018 = true
				end
			end
		end
	end
	--[[Tiered Radars]]--
	if event.tick%ttime==(r*19) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk2"]
	local LocaleName = game.getlocaliseditemname("radar-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(500,800) and glob.counter.plates > math.random(1000,2500) and glob.counter.tech > math.random(1000,3000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 8)
					fs.FailureReduction("plates", glob.counter.plates, 8)
					fs.FailureReduction("tech", glob.counter.tech, 8)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-13").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event019 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*20) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk3"]
	local LocaleName = game.getlocaliseditemname("radar-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1000,1600) and glob.counter.plates > math.random(2000,5000) and glob.counter.tech > math.random(2000,6000) and glob.EventCheck.event019==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 6)
					fs.FailureReduction("plates", glob.counter.plates, 6)
					fs.FailureReduction("tech", glob.counter.tech, 6)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-14").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event020 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*21) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk4"]
	local LocaleName = game.getlocaliseditemname("radar-mk4")
			if glob.counter.machine > math.random(2000,3200) and glob.counter.plates > math.random(4000,10000) and glob.counter.tech > math.random(4000,12000) and glob.EventCheck.event020==true then
		if not UnlockRecipe.enabled then 
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 4)
					fs.FailureReduction("plates", glob.counter.plates, 4)
					fs.FailureReduction("tech", glob.counter.tech, 4)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-15").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event021 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*22) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["radar-mk5"]
	local LocaleName = game.getlocaliseditemname("radar-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4000,6400) and glob.counter.plates > math.random(8000,20000) and glob.counter.tech > math.random(8000,24000) and glob.EventCheck.event021==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 2)
					fs.FailureReduction("plates", glob.counter.plates, 2)
					fs.FailureReduction("tech", glob.counter.tech, 2)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-16").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event022 = true
				end
			end
		end
	end
	--[[Tiered Mining Drills]]--
	if event.tick%ttime==(r*23) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk2"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk2")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(500,1000) and glob.counter.plates > math.random(2000,5000) and glob.counter.mining > math.random(300,500) and glob.counter.resource > math.random(5000,10000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 10)
					fs.FailureReduction("plates", glob.counter.plates, 10)
					fs.FailureReduction("mining", glob.counter.mining, 10)
					fs.FailureReduction("resource", glob.counter.resource, 10)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-17").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event023 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*24) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk3"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk3")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1000,2000) and glob.counter.plates > math.random(4000,10000) and glob.counter.mining > math.random(600,1000) and glob.counter.resource > math.random(10000,20000) and glob.EventCheck.event023==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 8)
					fs.FailureReduction("plates", glob.counter.plates, 8)
					fs.FailureReduction("mining", glob.counter.mining, 8)
					fs.FailureReduction("resource", glob.counter.resource, 8)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-18").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event024 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*25) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk4"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2000,4000) and glob.counter.plates > math.random(8000,20000) and glob.counter.mining > math.random(1200,2000) and glob.counter.resource > math.random(20000,40000) and glob.EventCheck.event024==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 6)
					fs.FailureReduction("plates", glob.counter.plates, 6)
					fs.FailureReduction("mining", glob.counter.mining, 6)
					fs.FailureReduction("resource", glob.counter.resource, 6)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-19").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event025 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*26) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk5"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4000,8000) and glob.counter.plates > math.random(16000,40000) and glob.counter.mining > math.random(2400,4000) and glob.counter.resource > math.random(40000,80000) and glob.EventCheck.event025==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 4)
					fs.FailureReduction("plates", glob.counter.plates, 4)
					fs.FailureReduction("mining", glob.counter.mining, 4)
					fs.FailureReduction("resource", glob.counter.resource, 4)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-20").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event026 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*27) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["basic-mining-drill-mk6"]
	local LocaleName = game.getlocaliseditemname("basic-mining-drill-mk6")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(12000,24000) and glob.counter.plates > math.random(64000,120000) and glob.counter.mining > math.random(8000,12000) and glob.counter.resource > math.random(100000,1000000) and glob.EventCheck.event026==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 1)
					fs.FailureReduction("plates", glob.counter.plates, 1)
					fs.FailureReduction("mining", glob.counter.mining, 1)
					fs.FailureReduction("resource", glob.counter.resource, 1)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-21").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event027 = true
				end
			end
		end
	end
	--[[Tiered Assembling Machines]]--
	if event.tick%ttime==(r*28) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-4"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-4")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(500,1000) and glob.counter.plates > math.random(1250,4000) and glob.counter.tech > math.random(1500,4000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 10)
					fs.FailureReduction("plates", glob.counter.plates, 10)
					fs.FailureReduction("tech", glob.counter.tech, 10)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-22").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event028 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*29) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-5"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-5")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(1000,2000) and glob.counter.plates > math.random(2500,8000) and glob.counter.tech > math.random(3000,8000) and glob.EventCheck.event028==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 8)
					fs.FailureReduction("plates", glob.counter.plates, 8)
					fs.FailureReduction("tech", glob.counter.tech, 8)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-23").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event029 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*30) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-6"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-6")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(2000,4000) and glob.counter.plates > math.random(5000,16000) and glob.counter.tech > math.random(6000,16000) and glob.EventCheck.event029==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 6)
					fs.FailureReduction("plates", glob.counter.plates, 6)
					fs.FailureReduction("tech", glob.counter.tech, 6)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-24").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event030 = true
				end
			end
		end
	end
	if event.tick%ttime==(r*31) and glob.modules.automation==true then 
	local UnlockRecipe = game.player.force.recipes["assembling-machine-7"]
	local LocaleName = game.getlocaliseditemname("assembling-machine-7")
		if not UnlockRecipe.enabled then 
			if glob.counter.machine > math.random(4000,8000) and glob.counter.plates > math.random(10000,32000) and glob.counter.tech > math.random(12000,32000) and glob.EventCheck.event029==true then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction("machine", glob.counter.machine, 4)
					fs.FailureReduction("plates", glob.counter.plates, 4)
					fs.FailureReduction("tech", glob.counter.tech, 4)
					fs.FailureMessage(LocaleName)
				else
					UnlockRecipe.enabled = true
					game.player.print(game.gettext("msg-automation-25").." "..LocaleName)
					game.player.force.resetrecipes()
					glob.EventCheck.event031 = true
				end
			end
		end
	end
end
end

--[[Dynamic System Reward Events!]]--
function dynamicRewards(event, ttime, r)
if glob.EventCheck.event001==true and glob.EventCheck.event002==true then
	if event.tick%ttime==(r*201) and glob.modules.tools==false then
		if not glob.EventCheck.event201 then 
			if glob.counter.dytech > math.random(5000,7500) then
				game.player.insert{name="steel-axe",count=1}
				game.player.print(game.gettext("msg-reward-1"))
				glob.EventCheck.event201=true
			end
		end
	end
	--[[This event will shutdown the Dynamic System when the player has called for it to go off, while it was running. This will always be the last event!!! This is an essential event! DO NOT MODIFY IT!!!!]]--
	if event.tick%ttime==(r*300) then
		glob.EventCheck.event001 = false
		glob.EventCheck.event002 = false
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

function DynamicFailureTest()
	if DynamicFailure(glob.counter.dytech) then
		game.player.print("Failure check succesfull!")
		fs.FailureReduction("science", glob.counter.science, 4)
		game.player.print("Failure reduced science!")
		fs.FailureReduction("gear", glob.counter.gear, 4)
		game.player.print("Failure reduced gear!")
	else
		game.player.print("Failure check failed!")
	end
end

function DynamicFailureTest()
	if DynamicFailure(glob.counter.dytech) then
		game.player.print("Failure check succesfull!")
		fs.FailureReduction("science", 4)
		game.player.print("Failure reduced science!")
		fs.FailureReduction("gear", 4)
		game.player.print("Failure reduced gear!")
	else
		game.player.print("Failure check failed!")
	end
end