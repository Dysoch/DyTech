module("PowerBoost", package.seeall)
require "scripts/functions"

function Crafting_Boost(STATEMENT)
	if STATEMENT == "start" then
		global.Dynamic_Power.Crafter.Old_Boost = game.forces.player.manual_crafting_speed_modifier
		game.forces.player.manual_crafting_speed_modifier = game.forces.player.manual_crafting_speed_modifier + 100
		global.Dynamic_Power.Ticker_Craft = global.Dynamic_Power.Ticker_Craft + 30
		global.Dynamic_Power.Crafter.State = true
		global.Dynamic_Power.Power = global.Dynamic_Power.Power - (1000*250)
	elseif STATEMENT == "stop" then
		game.forces.player.manual_crafting_speed_modifier = global.Dynamic_Power.Crafter.Old_Boost
		global.Dynamic_Power.Crafter.State = false
		if game.forces.player.manual_crafting_speed_modifier > 100 then
			game.forces.player.manual_crafting_speed_modifier = game.forces.player.manual_crafting_speed_modifier - 100
		end
	end
end

function Mining_Boost(STATEMENT)
	if STATEMENT == "start" then
		global.Dynamic_Power.Miner.Old_Boost = game.forces.player.manual_mining_speed_modifier
		game.forces.player.manual_mining_speed_modifier = game.forces.player.manual_mining_speed_modifier + 100
		global.Dynamic_Power.Ticker_Mine = global.Dynamic_Power.Ticker_Mine + 30
		global.Dynamic_Power.Miner.State = true
		global.Dynamic_Power.Power = global.Dynamic_Power.Power - (1000*250)
	elseif STATEMENT == "stop" then
		game.forces.player.manual_mining_speed_modifier = global.Dynamic_Power.Miner.Old_Boost
		global.Dynamic_Power.Miner.State = false
		if game.forces.player.manual_mining_speed_modifier > 100 then
			game.forces.player.manual_mining_speed_modifier = game.forces.player.manual_mining_speed_modifier - 100
		end
	end
end

function Researching_Boost(STATEMENT)
	if STATEMENT == "start" then
		global.Dynamic_Power.Research.Old_Boost = game.player.force.laboratory_speed_modifier
		game.player.force.laboratory_speed_modifier = game.player.force.laboratory_speed_modifier + 100
		global.Dynamic_Power.Ticker_Research = global.Dynamic_Power.Ticker_Research + 30
		global.Dynamic_Power.Research.State = true
		global.Dynamic_Power.Power = global.Dynamic_Power.Power - (1000*1000*2.5)
	elseif STATEMENT == "stop" then
		game.player.force.laboratory_speed_modifier = global.Dynamic_Power.Research.Old_Boost
		global.Dynamic_Power.Research.State = false
		if game.player.force.laboratory_speed_modifier > 100 then
			game.player.force.laboratory_speed_modifier = game.player.force.laboratory_speed_modifier - 100
		end
	end
end
