module("DynamicHard", package.seeall)
require "scripts/functions"

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 300 --[[This makes 5 minutes before the entire unlock and reward event start again]]--
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
	if event.tick%ttime==(r*3) and glob.modules.core==true then 
	local UnlockRecipe = game.player.force.recipes["science-pack-1-dytech-1"]
	local LocaleName = game.getlocaliseditemname("science-pack-1")
		if not UnlockRecipe.enabled then 
			if glob.counter.science > math.random(200,600) and glob.counter.gear > math.random(600,2000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction(glob.counter.science, 2)
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
			if glob.counter.science > math.random(500,1200) and glob.counter.gear > math.random(1800,6000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction(glob.counter.science, 1.5)
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
			if glob.counter.inserter > math.random(600,1200) and glob.counter.gear > math.random(1000,4000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction(glob.counter.inserter, 2)
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
			if glob.counter.inserter > math.random(1800,3600) and glob.counter.gear > math.random(3000,12000) then
				if DynamicFailure(glob.counter.dytech) then
					fs.FailureReduction(glob.counter.inserter, 1.5)
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
end

--[[Dynamic System Reward Events!]]--
function dynamicRewards(event, ttime, r)
	if event.tick%ttime==(r*201) then
		if not glob.EventCheck.event201 then 
			if glob.counter.dytech > math.random(15000,22500) then
				game.player.insert{name="steel-axe",count=1}
				game.player.print(game.gettext("msg-reward-1"))
				glob.EventCheck.event201 = true
			end
		end
	end
	--[[This event will shutdown the Dynamic System when the player has called for it to go off, while it was running. This will always be the last event!!!]]--
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