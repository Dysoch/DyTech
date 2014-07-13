module("ds", package.seeall)
require "scripts/functions"

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 300 --[[This makes 5 minutes before the entire unlock and reward event start again]]--
eventtime = 60
function dsttime()
return (dstotalevents*eventtime) end

-- Unlocks range from 1 to 200
-- Rewards range from 201 to 300
-- These values will be increased when needed

--[[Dynamic System Unlock events!]]--
function dynamicUnlocks(event, ttime, r) 
	--[[This first event makes sure the latest counters from DyTech-Core are transfered here! They will be reset to there newest numbers everytime the loop starts again! This is an essential event!!! DO NOT MODIFY THIS!]]--
	if event.tick%ttime==(r*1) then
		fs.CounterTransfer()
	end
end

--[[Dynamic System Reward Events!]]--
function dynamicRewards(event, ttime, r)
	if event.tick%ttime==(r*201) then
		if not glob.reward.axe1 then 
			if glob.counter.dytech > math.random(5000,7500) then
				game.player.insert{name="steel-axe",count=1}
				game.player.print(game.gettext("msg-reward-1"))
				glob.reward.axe1=true
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