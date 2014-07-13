module("ds", package.seeall)

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 74
eventtime = 60
function dsttime()
return (dstotalevents*eventtime) end

--[[The functions essential for the Dynamic System!]]--

--[[Dynamic System unlock event themself!]]--
function dynamicUnlocks(event, ttime, r)   
	
end

function dynamicRewards(event)
	if event.tick%3600==0 then
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