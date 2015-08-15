module("Power", package.seeall)
require "scripts/functions"
require "scripts/dynamic-power-boost"

function Startup() 
   if not global.Dynamic_Power then global.Dynamic_Power = {} end
   if not global.Dynamic_Power.Amount_Placed then global.Dynamic_Power.Amount_Placed = 0 end
   if not global.Dynamic_Power.Power then global.Dynamic_Power.Power = 0 end
   if not global.Dynamic_Power.Ticker_Craft then global.Dynamic_Power.Ticker_Craft = 0 end
   if not global.Dynamic_Power.Ticker_Mine then global.Dynamic_Power.Ticker_Mine = 0 end
   if not global.Dynamic_Power.Ticker_Research then global.Dynamic_Power.Ticker_Research = 0 end
   if not global.Dynamic_Power.Crafter then global.Dynamic_Power.Crafter = {} end
   if not global.Dynamic_Power.Miner then global.Dynamic_Power.Miner = {} end
   if not global.Dynamic_Power.Research then global.Dynamic_Power.Research = {} end
   if not global.Dynamic_Power.Crafter.State then global.Dynamic_Power.Crafter.State = false end
   if not global.Dynamic_Power.Miner.State then global.Dynamic_Power.Miner.State = false end
   if not global.Dynamic_Power.Research.State then global.Dynamic_Power.Research.State = false end
   if not global.Dynamic_Power.Crafter.Old_Boost then global.Dynamic_Power.Crafter.Old_Boost=0 end
   if not global.Dynamic_Power.Miner.Old_Boost then global.Dynamic_Power.Miner.Old_Boost=0 end
   if not global.Dynamic_Power.Research.Old_Boost then global.Dynamic_Power.Research.Old_Boost=0 end
end

function Ticker()
	if not global.Dynamic_Power then Startup() end
	if not global.Dynamic_Power.Research then Startup() end
	global.Dynamic_Power.Power = global.Dynamic_Power.Power + global.Dynamic_Power.Amount_Placed
	if global.Dynamic_Power.Ticker_Mine == 0 and global.Dynamic_Power.Miner.State then
		PowerBoost.Mining_Boost("stop")
	end
	if global.Dynamic_Power.Ticker_Craft == 0 and global.Dynamic_Power.Crafter.State then
		PowerBoost.Crafting_Boost("stop")
	end
	if global.Dynamic_Power.Ticker_Research == 0 and global.Dynamic_Power.Research.State then
		PowerBoost.Researching_Boost("stop")
	end
	if global.Dynamic_Power.Miner.State then
		global.Dynamic_Power.Ticker_Mine = global.Dynamic_Power.Ticker_Mine - 1
	end
	if global.Dynamic_Power.Crafter.State then
		global.Dynamic_Power.Ticker_Craft = global.Dynamic_Power.Ticker_Craft - 1
	end
	if global.Dynamic_Power.Research.State then
		global.Dynamic_Power.Ticker_Research = global.Dynamic_Power.Ticker_Research - 1
	end
	for index,player in pairs(game.players) do
		if game.players[index].gui.top["mainDynamicPowerFlow"] then
			GUI(index)
		end
	end
end

function Died_Entity(event)
	if string.sub(event.entity.name,1,12) == "steam-engine" or string.sub(event.entity.name,1,11) == "solar-panel" or string.sub(event.entity.name,1,17) == "large-solar-panel" or string.sub(event.entity.name,1,17) == "small-solar-panel" or string.sub(event.entity.name,1,23) == "small-basic-accumulator" or string.sub(event.entity.name,1,23) == "large-basic-accumulator" or string.sub(event.entity.name,1,17) == "basic-accumulator" then
		if global.Dynamic_Power.Amount_Placed ~= 0  then
			global.Dynamic_Power.Amount_Placed = global.Dynamic_Power.Amount_Placed - 1
		end
	end
end

function Mined_Entity(event)
	if string.sub(event.item_stack.name,1,12) == "steam-engine" or string.sub(event.item_stack.name,1,11) == "solar-panel" or string.sub(event.item_stack.name,1,17) == "large-solar-panel" or string.sub(event.item_stack.name,1,17) == "small-solar-panel" or string.sub(event.item_stack.name,1,23) == "small-basic-accumulator" or string.sub(event.item_stack.name,1,23) == "large-basic-accumulator" or string.sub(event.item_stack.name,1,17) == "basic-accumulator" then
		if global.Dynamic_Power.Amount_Placed ~= 0  then 
			global.Dynamic_Power.Amount_Placed = global.Dynamic_Power.Amount_Placed - 1
		end
	end
end

function Built(event)
	if string.sub(event.created_entity.name,1,12) == "steam-engine" or string.sub(event.created_entity.name,1,11) == "solar-panel" or string.sub(event.created_entity.name,1,17) == "small-solar-panel" or string.sub(event.created_entity.name,1,17) == "large-solar-panel" or string.sub(event.created_entity.name,1,23) == "small-basic-accumulator" or string.sub(event.created_entity.name,1,23) == "large-basic-accumulator" or string.sub(event.created_entity.name,1,17) == "basic-accumulator" then
		global.Dynamic_Power.Amount_Placed = global.Dynamic_Power.Amount_Placed + 1
	end
end

function GUI(PlayerIndex)
local player = game.players[PlayerIndex]
if game.players[PlayerIndex].gui.top["mainDynamicPowerFlow"] and game.players[PlayerIndex].gui.top["mainDynamicPowerFlow"].valid then
	game.players[PlayerIndex].gui.top["mainDynamicPowerFlow"].destroy()
end
player.gui.top.add({type="flow", direction="horizontal", name="mainDynamicPowerFlow"})
player.gui.top["mainDynamicPowerFlow"].add({type="frame", direction="vertical", name="mainDynamicPowerFrame", caption={"dynamic-power"}})
adder = player.gui.top["mainDynamicPowerFlow"]["mainDynamicPowerFrame"]
if global.Dynamic_Power.Power >= (1000*1000*1000*100) then
	adder.add({type="label", name="", caption={"power-2", string.sub(global.Dynamic_Power.Power,1,3), string.sub(global.Dynamic_Power.Power,4,6)}})
elseif global.Dynamic_Power.Power >= (1000*1000*1000*10) then
	adder.add({type="label", name="", caption={"power-2", string.sub(global.Dynamic_Power.Power,1,2), string.sub(global.Dynamic_Power.Power,3,5)}})
elseif global.Dynamic_Power.Power >= (1000*1000*1000*1) then
	adder.add({type="label", name="", caption={"power-2", string.sub(global.Dynamic_Power.Power,1,1), string.sub(global.Dynamic_Power.Power,2,4)}})
elseif global.Dynamic_Power.Power >= (1000*1000*100) then
	adder.add({type="label", name="", caption={"power-3", string.sub(global.Dynamic_Power.Power,1,3), string.sub(global.Dynamic_Power.Power,4,6)}})
elseif global.Dynamic_Power.Power >= (1000*1000*10) then
	adder.add({type="label", name="", caption={"power-3", string.sub(global.Dynamic_Power.Power,1,2), string.sub(global.Dynamic_Power.Power,3,5)}})
elseif global.Dynamic_Power.Power >= (1000*1000*1) then
	adder.add({type="label", name="", caption={"power-3", string.sub(global.Dynamic_Power.Power,1,1), string.sub(global.Dynamic_Power.Power,2,4)}})
elseif global.Dynamic_Power.Power >= (1000*100) then
	adder.add({type="label", name="", caption={"power-4", string.sub(global.Dynamic_Power.Power,1,3), string.sub(global.Dynamic_Power.Power,4,6)}})
elseif global.Dynamic_Power.Power >= (1000*10) then
	adder.add({type="label", name="", caption={"power-4", string.sub(global.Dynamic_Power.Power,1,2), string.sub(global.Dynamic_Power.Power,3,5)}})
elseif global.Dynamic_Power.Power >= (1000*1) then
	adder.add({type="label", name="", caption={"power-4", string.sub(global.Dynamic_Power.Power,1,1), string.sub(global.Dynamic_Power.Power,2,4)}})
else
	adder.add({type="label", name="", caption={"power-5", global.Dynamic_Power.Power}})
end
if global.Dynamic_Power.Miner.State then
	adder.add({type="label", name="", caption={"mining-sec-left", global.Dynamic_Power.Ticker_Mine}})
end
if global.Dynamic_Power.Crafter.State then
	adder.add({type="label", name="", caption={"crafting-sec-left", global.Dynamic_Power.Ticker_Craft}})
end
if global.Dynamic_Power.Research.State then
	adder.add({type="label", name="", caption={"research-sec-left", global.Dynamic_Power.Ticker_Research}})
end
if global.Dynamic_Power.Power > (1000*250) then
	adder.add({type="button", name="DyTech-Dynamic-Power-Crafter-Button", caption={"dynamic-power-crafter"}})
	adder.add({type="button", name="DyTech-Dynamic-Power-Miner-Button", caption={"dynamic-power-miner"}})
end
if global.Dynamic_Power.Power > (1000*1000*2.5) then
	adder.add({type="button", name="DyTech-Dynamic-Power-Research-Button", caption={"dynamic-power-research"}})
end
adder.add({type="button", name="DyTech-Dynamics-Back-Button", caption={"back"}})
end