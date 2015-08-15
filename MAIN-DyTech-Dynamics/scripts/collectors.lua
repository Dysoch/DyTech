module("CollectorFunctions", package.seeall)

function ticker()
	if global.Collectors.CollectorList ~= nil then
		if global.ticks == 0 or global.ticks == nil then
			global.ticks = 59
			processCollectors()
		else
			global.ticks = global.ticks - 1
		end
	end
end

function builtEntity(event)
	if event.created_entity.name == "item-collector-area" then
		newCollector = event.created_entity
		if global.Collectors.CollectorList == nil then
			global.Collectors.CollectorList = {}
			ticker()
		end
		table.insert(global.Collectors.CollectorList, newCollector)
		if not global.Collectors.Amount then
			global.Collectors.Amount = 1
		else
			global.Collectors.Amount = global.Collectors.Amount + 1
		end
	end
end

AutoRange = 500

function processCollectors()
	local items
	local inventory
	local belt
for k,collector in pairs(global.Collectors.CollectorList) do
	if collector.valid then
		if not global.Collectors.AutomaticRange then
			items = game.get_surface("nauvis").find_entities_filtered({area = {{x = collector.position.x - global.Collectors.Range, y = collector.position.y - global.Collectors.Range}, {x = collector.position.x + global.Collectors.Range, y = collector.position.y + global.Collectors.Range}}, name = "item-on-ground"})
			if #items > 0 then
				inventory = collector.get_inventory(1)
				for _,item in pairs(items) do
					--if not item.is_item_on_belt() then
						if global.Collectors.Filtered then
							if item.stack.name == "small-corpse" or
							item.stack.name == "medium-corpse" or
							item.stack.name == "big-corpse" or
							item.stack.name == "berserk-corpse" or
							item.stack.name == "elder-corpse" or
							item.stack.name == "king-corpse" or
							item.stack.name == "queen-corpse" then
								if inventory.can_insert(item.stack) then
									inventory.insert(item.stack)
									item.destroy()
									break
								end
							end
						else 
							if inventory.can_insert(item.stack) then
								inventory.insert(item.stack)
								item.destroy()
							break
							end
						end
					--end
				end
			end
		else
			items = game.get_surface("nauvis").find_entities_filtered({area = {{x = collector.position.x - (AutoRange/global.Collectors.Amount), y = collector.position.y - (AutoRange/global.Collectors.Amount)}, {x = collector.position.x + (AutoRange/global.Collectors.Amount), y = collector.position.y + (AutoRange/global.Collectors.Amount)}}, name = "item-on-ground"})
			if #items > 0 then
				inventory = collector.get_inventory(1)
				for _,item in pairs(items) do
					--if not item.is_item_on_belt() then
						if global.Collectors.Filtered then
							if item.stack.name == "small-corpse" or
							item.stack.name == "medium-corpse" or
							item.stack.name == "big-corpse" or
							item.stack.name == "berserk-corpse" or
							item.stack.name == "elder-corpse" or
							item.stack.name == "king-corpse" or
							item.stack.name == "queen-corpse" then
								if inventory.can_insert(item.stack) then
									inventory.insert(item.stack)
									item.destroy()
									break
								end
							end
						else 
							if inventory.can_insert(item.stack) then
								inventory.insert(item.stack)
								item.destroy()
							break
							end
						end
					--end
				end
			end
		end
	else
		table.remove(global.Collectors.CollectorList, k)
		if #global.Collectors.CollectorList == 0 then
			global.Collectors.CollectorList = nil
		end
	end
end
end

function showCollectorGUI(PlayerIndex)
local player = game.players[PlayerIndex]
player.gui.top.add({type="flow", direction="vertical", name=guiNames.mainCollectorFlow})
player.gui.top[guiNames.mainCollectorFlow].add({type="frame", direction="vertical", name=guiNames.mainCollectorFrame, caption={"collector-gui"}})
adder = player.gui.top[guiNames.mainCollectorFlow][guiNames.mainCollectorFrame]
adder.add({type="button", name=guiNames.CollectorWorkingButton, caption={"collectors-working", tostring(global.Collectors.Working)}})
adder.add({type="button", name=guiNames.CollectorFilteredButton, caption={"collectors-filtered", tostring(global.Collectors.Filtered)}})
adder.add({type="button", name=guiNames.CollectorAutoRangeButton, caption={"collectors-autorange-1", tostring(global.Collectors.AutomaticRange)}})
if not global.Collectors.AutomaticRange then
	adder.add({type="button", name=guiNames.CollectorRangeMinusButton, caption="-"})
	adder.add({type="button", name=guiNames.CollectorRangeButton, caption={"collectors-range", tostring(global.Collectors.Range*2), "x", tostring(global.Collectors.Range*2)}})
	adder.add({type="button", name=guiNames.CollectorRangePlusButton, caption="+"})
else
	adder.add({type="label", name="CollectorsLabel-1", caption={"collectors-amount", tostring(global.Collectors.Amount)}})
	adder.add({type="label", name="CollectorsLabel-2", caption={"collectors-autorange-2", tostring(math.floor((AutoRange/global.Collectors.Amount)*2)), "x", tostring(math.floor((AutoRange/global.Collectors.Amount)*2))}})
end
adder.add({type="button", name="DyTech-Dynamics-Back-Button", caption={"back"}})
end