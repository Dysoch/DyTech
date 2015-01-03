module("ds", package.seeall)

--[[ The Calculators for the time to check the events!]]--
dstotalevents = 74
eventtime = 60
function dsttime()
return (dstotalevents*eventtime) end

--[[The functions essential for the Dynamic System!]]--

--[[Dynamic System unlock event themself!]]--
function dynamicUnlocks(event, ttime, r)   
	--[[Repair Packs]]--
	if event.tick%ttime==(r*1) then 
		if not game.player.force.recipes["repair-pack"].enabled then 
			if glob.counter.robot > math.random(75,200) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.robot =(glob.counter.robot-math.random(50))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["repair-pack"].enabled = true
					game.player.print(game.gettext("msg-robot-1"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*2) then 
		if not game.player.force.recipes["repair-pack-2"].enabled then
			if glob.counter.robot > math.random(275,500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.robot =(glob.counter.robot-math.random(glob.counter.robot/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["steel-processing"].researched and game.player.force.recipes["repair-pack"].enabled then
					game.player.force.recipes["repair-pack-2"].enabled = true
					game.player.print(game.gettext("msg-robot-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	--[[Gears]]--
	if event.tick%ttime==(r*3) then 
		if not game.player.force.recipes["iron-gear-wheel"].enabled then
			if glob.counter.gear > math.random(150,400) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.gear =(glob.counter.gear-math.random(25))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else 
					game.player.force.recipes["iron-gear-wheel"].enabled = true
					game.player.print(game.gettext("msg-iron-gears"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*4) then 
		if not game.player.force.recipes["steel-gear-wheel"].enabled then
			if glob.counter.gear > math.random(1000,1500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.gear =(glob.counter.gear-math.random(100))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["steel-processing"].researched and game.player.force.recipes["iron-gear-wheel"].enabled then
					game.player.force.recipes["steel-gear-wheel"].enabled = true
					game.player.print(game.gettext("msg-steel-gears"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	--[[Axes]]--
	if event.tick%ttime==(r*5) then  
		if not game.player.force.recipes["iron-axe"].enabled then 
			if glob.counter.mining > math.random(15,40) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["iron-axe"].enabled = true
					game.player.print(game.gettext("msg-iron-axe"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*6) then 
		if not game.player.force.recipes["steel-axe"].enabled then 
			if glob.counter.mining > math.random(50,100) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["steel-processing"].researched and game.player.force.recipes["iron-axe"].enabled then
					game.player.force.recipes["steel-axe"].enabled = true
					game.player.print(game.gettext("msg-steel-axe"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*7) then 
		if not game.player.force.recipes["tungsten-axe"].enabled then
			if glob.counter.mining > math.random(240,360) and game.player.force.recipes["metallurgy-tungsten"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["tungsten-axe"].enabled = true
					game.player.print(game.gettext("msg-adv-steel-axe"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*8) then 
		if not game.player.force.recipes["gemstone-axe"].enabled then
			if glob.counter.mining > math.random(400,1250) and game.player.force.recipes["metallurgy-tungsten"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["gem-processing"].researched then
					game.player.force.recipes["gemstone-axe"].enabled = true
					game.player.print(game.gettext("msg-adv-steel-axe-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	--[[Mining Drills]]--
	if event.tick%ttime==(r*9) then 
		if not game.player.force.recipes["basic-mining-drill"].enabled then
			if glob.counter.mining > math.random(25,50) and glob.counter.resource > math.random(250,500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["basic-mining-drill"].enabled = true
					game.player.print(game.gettext("msg-mining-1"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*10) then 
		if not game.player.force.recipes["basic-mining-drill-mk2"].enabled then
			if glob.counter.mining > math.random(125,250) and glob.counter.resource > math.random(2500,5000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["miner-2"].researched and game.player.force.recipes["basic-mining-drill"].enabled then
					game.player.force.recipes["basic-mining-drill-mk2"].enabled = true
					game.player.print(game.gettext("msg-mining-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*11) then 
		if not game.player.force.recipes["basic-mining-drill-mk3"].enabled then
			if glob.counter.mining > math.random(400,500) and glob.counter.resource > math.random(5000,7500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["miner-3"].researched and game.player.force.recipes["basic-mining-drill-mk2"].enabled then
					game.player.force.recipes["basic-mining-drill-mk3"].enabled = true
					game.player.print(game.gettext("msg-mining-3"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*12) then 
		if not game.player.force.recipes["basic-mining-drill-mk4"].enabled then
			if glob.counter.mining > math.random(800,1000) and glob.counter.resource > math.random(7500,12500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["miner-4"].researched and game.player.force.recipes["basic-mining-drill-mk3"].enabled then
					game.player.force.recipes["basic-mining-drill-mk4"].enabled = true
					game.player.print(game.gettext("msg-mining-4"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*13) then 
		if not game.player.force.recipes["basic-mining-drill-mk5"].enabled then
			if glob.counter.mining > math.random(1250,1750) and glob.counter.resource > math.random(13000,15000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["miner-5"].researched and game.player.force.recipes["basic-mining-drill-mk4"].enabled then
					game.player.force.recipes["basic-mining-drill-mk5"].enabled = true
					game.player.print(game.gettext("msg-mining-5"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*14) then 
		if not game.player.force.recipes["basic-mining-drill-mk6"].enabled then
			if glob.counter.mining > math.random(5000,10000) and glob.counter.resource > math.random(50000,100000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining =(glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["miner-6"].researched and game.player.force.recipes["basic-mining-drill-mk5"].enabled then
					game.player.force.recipes["basic-mining-drill-mk6"].enabled = true
					game.player.print(game.gettext("msg-mining-6a"))
					game.player.print(game.gettext("msg-mining-6b"))
					game.player.force.resetrecipes()
					glob.unlock.umd = glob.unlock.umd + glob.time
					game.player.print(game.gettext("msg-mining-6c"))
					game.player.print(game.gettext("msg-mining-6d").." "..tostring(glob.unlock.umd/60))
				end
			end
		end
	end
	--[[Sand]]--
	if event.tick%ttime==(r*15) then 
		if not game.player.force.recipes["basic-mining-drill-sand"].enabled then
			if glob.counter.resource > math.random(750,2500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.resource = (glob.counter.resource-math.random(glob.counter.resource/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["basic-mining-drill-sand"].enabled = true
					game.player.print(game.gettext("msg-sand-1"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*16) then 
		if not game.player.force.recipes["sandwall"].enabled then
			if glob.counter.resource > math.random(3000,5000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.resource = (glob.counter.resource-math.random(glob.counter.resource/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["sandwall"].enabled = true
					game.player.print(game.gettext("msg-sand-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*17) then 
		if not game.player.force.recipes["gun-turret"].enabled then
			if glob.combat.small > math.random(1,50) and glob.counter.plates > math.random(100,250) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["turrets"].researched then
					game.player.force.recipes["gun-turret"].enabled = true
					game.player.print(game.gettext("msg-turret-0"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*18) then 
		if not game.player.force.recipes["laser-turret"].enabled then
			if glob.counter.turret > math.random(5,25) and glob.counter.plates > math.random(1000,2000) and glob.combat.small > math.random(1000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets"].researched and game.player.force.recipes["gun-turret"].enabled then
					game.player.force.recipes["laser-turret"].enabled = true
					game.player.print(game.gettext("msg-turret-1"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*19) then 
		if not game.player.force.recipes["laser-turret-2"].enabled then
			if glob.counter.turret > math.random(25,100) and glob.counter.plates > math.random(2000,4000) and glob.combat.dytech > math.random(2000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets"].researched and game.player.force.recipes["laser-turret"].enabled then
					game.player.force.recipes["laser-turret-2"].enabled = true
					game.player.print(game.gettext("msg-turret-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*20) then 
		if not game.player.force.recipes["laser-turret-3"].enabled then
			if glob.counter.turret > math.random(75,150) and glob.counter.plates > math.random(4000,8000) and glob.combat.dytech > math.random(3000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets"].researched and game.player.force.recipes["laser-turret-2"].enabled then
					game.player.force.recipes["laser-turret-3"].enabled = true
					game.player.print(game.gettext("msg-turret-3"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*21) then 
		if not game.player.force.recipes["laser-turret-4"].enabled then
			if glob.counter.turret > math.random(100,200) and glob.counter.plates > math.random(8000,16000) and glob.combat.dytech > math.random(4000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-1"].researched and game.player.force.recipes["laser-turret-3"].enabled then
					game.player.force.recipes["laser-turret-4"].enabled = true
					game.player.print(game.gettext("msg-turret-4"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*22) then 
		if not game.player.force.recipes["laser-turret-5"].enabled then
			if glob.counter.turret > math.random(150,300) and glob.counter.plates > math.random(16000,32000) and glob.combat.dytech > math.random(5000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-1"].researched and game.player.force.recipes["laser-turret-4"].enabled then
					game.player.force.recipes["laser-turret-5"].enabled = true
					game.player.print(game.gettext("msg-turret-5"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*23) then 
		if not game.player.force.recipes["laser-turret-6"].enabled then
			if glob.counter.turret > math.random(2500) and glob.counter.dytech > math.random(25000,75000) and glob.combat.dytech > math.random(6000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-1"].researched and game.player.force.recipes["laser-turret-5"].enabled then
					game.player.force.recipes["laser-turret-6"].enabled = true
					game.player.print(game.gettext("msg-turret-6"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*24) then 
		if not game.player.force.recipes["laser-turret-7"].enabled then
			if glob.counter.turret > math.random(3350) and glob.counter.dytech > math.random(50000,100000) and glob.combat.dytech > math.random(7000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-2"].researched and game.player.force.recipes["laser-turret-6"].enabled then
					game.player.force.recipes["laser-turret-7"].enabled = true
					game.player.print(game.gettext("msg-turret-7"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*25) then 
		if not game.player.force.recipes["laser-turret-8"].enabled then
			if glob.counter.turret > math.random(4200) and glob.counter.dytech > math.random(75000,125000) and glob.combat.dytech > math.random(8000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-2"].researched and game.player.force.recipes["laser-turret-7"].enabled then
					game.player.force.recipes["laser-turret-8"].enabled = true
					game.player.print(game.gettext("msg-turret-8"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*26) then 
		if not game.player.force.recipes["laser-turret-9"].enabled then
			if glob.counter.turret > math.random(5000) and glob.counter.dytech > math.random(100000,1000000) and glob.counter.tech > math.random(25000) and glob.counter.plates > math.random(50000) and glob.combat.dytech > math.random(5000,10000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-2"].researched and game.player.force.recipes["laser-turret-8"].enabled then
					game.player.force.recipes["laser-turret-9"].enabled = true
					game.player.print(game.gettext("msg-turret-9"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*27) then 
		if not game.player.force.recipes["laser-turret-sniper-1"].enabled then
			if glob.counter.turret > math.random(2500) and glob.counter.dytech > math.random(500000) and glob.combat.dytech > math.random(3000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-3"].researched then
					game.player.force.recipes["laser-turret-sniper-1"].enabled = true
					game.player.print(game.gettext("msg-turret-10"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*28) then 
		if not game.player.force.recipes["laser-turret-sniper-2"].enabled then
			if glob.counter.turret > math.random(2500) and glob.counter.dytech > math.random(100000,1000000) and glob.combat.dytech > math.random(6000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-3"].researched and game.player.force.recipes["laser-turret-sniper-1"].enabled then
					game.player.force.recipes["laser-turret-sniper-2"].enabled = true
					game.player.print(game.gettext("msg-turret-11"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*29) then 
		if not game.player.force.recipes["laser-turret-sniper-3"].enabled then
			if glob.counter.turret > math.random(2500) and glob.counter.dytech > math.random(250000,10000000) and glob.combat.dytech > math.random(9000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["laser-turrets-3"].researched and game.player.force.recipes["laser-turret-sniper-2"].enabled then
					game.player.force.recipes["laser-turret-sniper-3"].enabled = true
					game.player.print(game.gettext("msg-turret-12"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*30) then 
		if not game.player.force.recipes["science-pack-1"].enabled then
			if glob.counter.plates > math.random(10,50) and glob.counter.gear > math.random(10,50) then
				glob.counter.science = (glob.counter.science-math.random(glob.counter.science/2))
				game.player.print(game.gettext("msg-dynamic-failure"))
			else
				game.player.force.recipes["science-pack-1"].enabled = true
				game.player.print(game.gettext("msg-science-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*31) then 
		if not game.player.force.recipes["science-pack-2"].enabled then
			if glob.counter.science > math.random(25,50) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.science = (glob.counter.science-math.random(glob.counter.science/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.recipes["science-pack-1"].enabled then
					game.player.force.recipes["science-pack-2"].enabled = true
					game.player.print(game.gettext("msg-science-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*32) then 
		if not game.player.force.recipes["science-pack-3"].enabled then
			if glob.counter.science > math.random(250) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.science = (glob.counter.science-math.random(glob.counter.science/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["rocketry"].researched and game.player.force.recipes["science-pack-2"].enabled then
					game.player.force.recipes["science-pack-3"].enabled = true
					game.player.print(game.gettext("msg-science-3"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*33) then 
		if not game.player.force.recipes["alien-science-pack"].enabled then
			if glob.counter.science > math.random(100,250) and glob.counter.dytech > math.random(25000) and glob.combat.dytech > math.random(500) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.science = (glob.counter.science-math.random(glob.counter.science/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				elseif game.player.force.technologies["alien-technology"].researched and game.player.force.recipes["science-pack-3"].enabled then
					game.player.force.recipes["alien-science-pack"].enabled = true
					game.player.print(game.gettext("msg-science-4"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*34) then 
		if not game.player.force.recipes["geothermal-extractor"].enabled then
			if glob.time > 3600 and glob.counter.plates > math.random(100,150) and game.player.force.technologies["dytech-1"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.plates = (glob.counter.plates-math.random(glob.counter.plates/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["geothermal-extractor"].enabled = true
					game.player.print(game.gettext("msg-metallurgy-1"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*35) then 
		if not game.player.force.recipes["mold-gear"].enabled then
			if glob.time > 4200 and glob.counter.gear > math.random(150,1500) and game.player.force.recipes["steel-gear-wheel"].enabled and game.player.force.technologies["dytech-2"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.gear = (glob.counter.gear-math.random(glob.counter.gear/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["mold-gear"].enabled = true
					game.player.force.recipes["metallurgy-machine-gear"].enabled = true
					game.player.print(game.gettext("msg-mold-gear"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*36) then 
		if not game.player.force.recipes["mold-wire"].enabled then
			if glob.time > 4200 and glob.counter.energy > math.random(150,1500) and game.player.force.technologies["dytech-2"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.energy = (glob.counter.energy-math.random(glob.counter.energy/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["mold-wire"].enabled = true
					game.player.force.recipes["metallurgy-machine-wire"].enabled = true
					game.player.print(game.gettext("msg-mold-wire"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*37) then 
		if not game.player.force.recipes["mold-circuit"].enabled then
			if glob.time > 4200 and glob.counter.tech > math.random(150,1500) and game.player.force.technologies["dytech-2"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["mold-circuit"].enabled = true
					game.player.force.recipes["metallurgy-machine-circuit"].enabled = true
					game.player.print(game.gettext("msg-mold-circuit"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*38) then 
		if not game.player.force.recipes["mold-tool"].enabled then
			if glob.time > 4200 and glob.counter.mining > math.random(150,1500) and game.player.force.technologies["dytech-2"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.mining = (glob.counter.mining-math.random(glob.counter.mining/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["mold-tool"].enabled = true
					game.player.force.recipes["metallurgy-machine-tool"].enabled = true
					game.player.print(game.gettext("msg-mold-tool"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*39) then 
		if not game.player.force.recipes["mold-ammo-basic"].enabled then
			if glob.time > 4200 and glob.counter.ammo > math.random(150,1500) and game.player.force.technologies["dytech-2"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.ammo = (glob.counter.ammo-math.random(glob.counter.ammo/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["mold-ammo-basic"].enabled = true
					game.player.force.recipes["mold-ammo-advanced"].enabled = true
					game.player.force.recipes["metallurgy-machine-ammo-basic"].enabled = true
					game.player.force.recipes["metallurgy-machine-ammo-advanced"].enabled = true
					game.player.print(game.gettext("msg-mold-ammo"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*40) then 
		if not game.player.force.recipes["metallurgy-copper-smelt"].enabled then
			if game.player.force.recipes["geothermal-extractor"].enabled and glob.time > 4000 and glob.counter.dytech > math.random(1500,15000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-copper-smelt"].enabled = true
					game.player.force.recipes["metallurgy-copper-plate"].enabled = true
					game.player.force.recipes["blast-furnace"].enabled = true
					game.player.force.recipes["forge"].enabled = true
					game.player.force.recipes["lava-handler"].enabled = true
					game.player.force.recipes["metallurgy-liquid-air"].enabled = true
					game.player.force.recipes["air-intake"].enabled = true
					game.player.force.recipes["lava-800"].enabled = true
					game.player.force.recipes["lava-1000"].enabled = true
					game.player.force.recipes["lava-1200"].enabled = true
					game.player.print(game.gettext("msg-copper-melt"))
					game.player.print(game.gettext("msg-metallurgy-2"))
					game.player.print(game.gettext("msg-metallurgy-3"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*41) then 
		if not game.player.force.recipes["metallurgy-iron-smelt"].enabled then
			if game.player.force.recipes["metallurgy-copper-smelt"].enabled and glob.time > 4000 and glob.counter.dytech > math.random(1800,18000) then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-iron-smelt"].enabled = true
					game.player.force.recipes["metallurgy-iron-plate"].enabled = true
					game.player.force.recipes["lava-1400"].enabled = true
					game.player.force.recipes["lava-1600"].enabled = true
					game.player.print(game.gettext("msg-iron-melt"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*42) then 
		if not game.player.force.recipes["metallurgy-steel-plate"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 5000 and glob.counter.dytech > math.random(2100,21000) and game.player.force.technologies["steel-processing"].researched then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-steel-plate"].enabled = true
					game.player.force.recipes["centrifuge"].enabled = true
					game.player.force.recipes["coal-splitting"].enabled = true
					game.player.force.recipes["metallurgy-iron-carbonated"].enabled = true
					game.player.force.recipes["lava-1800"].enabled = true
					game.player.force.recipes["lava-2000"].enabled = true
					game.player.print(game.gettext("msg-steel-melt"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*43) then 
		if not game.player.force.recipes["mold-crafting-ammo-advanced-1"].enabled then
			if game.player.force.recipes["metallurgy-iron-carbonated"].enabled and glob.time > 9000 and game.player.force.recipes["piercing-bullet-magazine"].enabled then
				game.player.force.recipes["mold-crafting-ammo-advanced-1"].enabled = true
				game.player.print(game.gettext("msg-craft-ammo-advanced-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*44) then 
		if not game.player.force.recipes["mold-crafting-ammo-advanced-2"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 and game.player.force.recipes["explosives"].enabled then
				game.player.force.recipes["mold-crafting-ammo-advanced-2"].enabled = true
				game.player.print(game.gettext("msg-craft-ammo-advanced-2"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*45) then 
		if not game.player.force.recipes["mold-crafting-ammo-advanced-3"].enabled then
			if game.player.force.recipes["metallurgy-iron-carbonated"].enabled and glob.time > 9000 and game.player.force.recipes["piercing-shotgun-shell"].enabled then
				game.player.force.recipes["mold-crafting-ammo-advanced-3"].enabled = true
				game.player.print(game.gettext("msg-craft-ammo-advanced-3"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*46) then 
		if not game.player.force.recipes["mold-crafting-ammo-basic-1"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 and game.player.force.recipes["basic-bullet-magazine"].enabled then
				game.player.force.recipes["mold-crafting-ammo-basic-1"].enabled = true
				game.player.print(game.gettext("msg-craft-ammo-basic-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*47) then 
		if not game.player.force.recipes["mold-crafting-ammo-basic-2"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 3000 and game.player.force.recipes["shotgun-shell"].enabled then
				game.player.force.recipes["mold-crafting-ammo-basic-2"].enabled = true
				game.player.print(game.gettext("msg-craft-ammo-basic-2"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*48) then 
		if not game.player.force.recipes["mold-crafting-circuit-1"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 and game.player.force.recipes["electronic-circuit"].enabled then
				game.player.force.recipes["mold-crafting-circuit-1"].enabled = true
				game.player.print(game.gettext("msg-craft-circuit-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*49) then 
		if not game.player.force.recipes["mold-crafting-circuit-2"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 and game.player.force.recipes["advanced-circuit"].enabled then
				game.player.force.recipes["mold-crafting-circuit-2"].enabled = true
				game.player.print(game.gettext("msg-craft-circuit-2"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*51) then
		if not game.player.force.recipes["mold-crafting-gear-1"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 and game.player.force.recipes["iron-gear-wheel"].enabled then
				game.player.force.recipes["mold-crafting-gear-1"].enabled = true
				game.player.print(game.gettext("msg-craft-gear-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*52) then 
		if not game.player.force.recipes["mold-crafting-gear-2"].enabled then
			if game.player.force.recipes["metallurgy-iron-carbonated"].enabled and glob.time > 9000 and game.player.force.recipes["steel-gear-wheel"].enabled then
				game.player.force.recipes["mold-crafting-gear-2"].enabled = true
				game.player.print(game.gettext("msg-craft-gear-2"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*53) then 
		if not game.player.force.recipes["mold-crafting-tool-1"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 and game.player.force.recipes["iron-axe"].enabled then
				game.player.force.recipes["mold-crafting-tool-1"].enabled = true
				game.player.print(game.gettext("msg-craft-tools-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*54) then 
		if not game.player.force.recipes["mold-crafting-tool-2"].enabled then
			if game.player.force.recipes["metallurgy-iron-carbonated"].enabled and glob.time > 9000 and game.player.force.recipes["steel-axe"].enabled then
				game.player.force.recipes["mold-crafting-tool-2"].enabled = true
				game.player.print(game.gettext("msg-craft-tools-2"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*55) then 
		if not game.player.force.recipes["mold-crafting-tool-3"].enabled then
			if game.player.force.recipes["metallurgy-tungsten-plate"].enabled and glob.time > 9000 and game.player.force.recipes["tungsten-axe"].enabled then
				game.player.force.recipes["mold-crafting-tool-3"].enabled = true
				game.player.print(game.gettext("msg-craft-tools-3"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*56) then 
		if not game.player.force.recipes["mold-crafting-wire-1"].enabled then
			if game.player.force.recipes["metallurgy-iron-smelt"].enabled and glob.time > 9000 then
				game.player.force.recipes["mold-crafting-wire-1"].enabled = true
				game.player.print(game.gettext("msg-craft-wire-1"))
				game.player.force.resetrecipes()
			end
		end
	end
	if event.tick%ttime==(r*57) then 
		if not game.player.force.recipes["metallurgy-tin-smelt"].enabled then
			if glob.time > math.random(2500,10000) and glob.counter.dytech > math.random(5000,50000) and game.player.force.recipes["lava-800"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-tin-plate"].enabled = true
					game.player.force.recipes["metallurgy-tin-smelt"].enabled = true
					game.player.print(game.gettext("msg-tin"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*58) then 
		if not game.player.force.recipes["metallurgy-zinc-smelt"].enabled then
			if glob.time > math.random(2500,10000) and glob.counter.dytech > math.random(5000,50000) and game.player.force.recipes["lava-800"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-zinc-plate"].enabled = true
					game.player.force.recipes["metallurgy-zinc-smelt"].enabled = true
					game.player.print(game.gettext("msg-zinc"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*59) then 
		if not game.player.force.recipes["metallurgy-lead-smelt"].enabled then
			if glob.time > math.random(2500,10000) and glob.counter.dytech > math.random(5000,50000) and game.player.force.recipes["lava-800"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-lead-plate"].enabled = true
					game.player.force.recipes["metallurgy-lead-smelt"].enabled = true
					game.player.print(game.gettext("msg-lead"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*60) then 
		if not game.player.force.recipes["metallurgy-gold-smelt"].enabled then
			if glob.time > math.random(2500,10000) and glob.counter.dytech > math.random(5000,50000) and game.player.force.recipes["lava-1200"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-gold-plate"].enabled = true
					game.player.force.recipes["metallurgy-gold-smelt"].enabled = true
					game.player.print(game.gettext("msg-gold"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*61) then 
		if not game.player.force.recipes["metallurgy-silver-smelt"].enabled then
			if glob.time > math.random(2500,10000) and glob.counter.dytech > math.random(5000,50000) and game.player.force.recipes["lava-2000"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-silver-plate"].enabled = true
					game.player.force.recipes["metallurgy-silver-smelt"].enabled = true
					game.player.force.recipes["lava-2200"].enabled = true
					game.player.force.recipes["lava-2400"].enabled = true
					game.player.force.recipes["lava-2600"].enabled = true
					game.player.print(game.gettext("msg-silver"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*62) then 
		if not game.player.force.recipes["metallurgy-tungsten-smelt"].enabled then
			if glob.time > math.random(2500,10000) and glob.counter.dytech > math.random(15000,50000) and game.player.force.recipes["lava-2000"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-tungsten-plate"].enabled = true
					game.player.force.recipes["metallurgy-tungsten-smelt"].enabled = true
					game.player.force.recipes["lava-2800"].enabled = true
					game.player.force.recipes["lava-3000"].enabled = true
					game.player.force.recipes["lava-3200"].enabled = true
					game.player.force.recipes["lava-3400"].enabled = true
					game.player.force.recipes["lava-3600"].enabled = true
					game.player.force.recipes["lava-3800"].enabled = true
					game.player.force.recipes["lava-4000"].enabled = true
					game.player.force.recipes["empty-tungsten-barrel"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-01"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-02"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-03"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-04"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-05"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-06"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-07"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-08"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-09"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-10"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-11"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-12"].enabled = true
					game.player.force.recipes["metallurgy-barrel-empty-13"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-01"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-02"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-03"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-04"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-05"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-06"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-07"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-08"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-09"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-10"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-11"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-12"].enabled = true
					game.player.force.recipes["metallurgy-barrel-fill-13"].enabled = true
					game.player.print(game.gettext("msg-tungsten"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*63) then 
		if not game.player.force.recipes["metallurgy-copper-tungsten"].enabled then
			if glob.time > math.random(5000,15000) and glob.counter.dytech > math.random(25000,100000) and game.player.force.recipes["metallurgy-tungsten-smelt"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-copper-tungsten-alloy"].enabled = true
					game.player.force.recipes["metallurgy-copper-tungsten"].enabled = true
					game.player.print(game.gettext("msg-copper-tungsten"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*64) then 
		if not game.player.force.recipes["mold-crafting-wire-4"].enabled then
			if glob.time > math.random(5000,15000) and glob.counter.dytech > math.random(25000,100000) and game.player.force.recipes["metallurgy-copper-tungsten"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["mold-crafting-wire-4"].enabled = true
					game.player.print(game.gettext("msg-craft-wire-2"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*65) then 
		if not game.player.force.recipes["metallurgy-bronze"].enabled then
			if glob.time > math.random(7500,15000) and glob.counter.dytech > math.random(50000,150000) and game.player.force.recipes["metallurgy-tin-smelt"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-bronze"].enabled = true
					game.player.force.recipes["metallurgy-bronze-alloy"].enabled = true
					game.player.print(game.gettext("msg-bronze"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*66) then 
		if not game.player.force.recipes["metallurgy-brass"].enabled then
			if glob.time > math.random(7500,15000) and glob.counter.dytech > math.random(50000,150000) and game.player.force.recipes["metallurgy-zinc-smelt"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-brass"].enabled = true
					game.player.force.recipes["metallurgy-brass-alloy"].enabled = true
					game.player.print(game.gettext("msg-brass"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*67) then 
		if not game.player.force.recipes["metallurgy-electrum"].enabled then
			if glob.time > math.random(7500,15000) and glob.counter.dytech > math.random(50000,150000) and game.player.force.recipes["metallurgy-gold-smelt"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-electrum"].enabled = true
					game.player.force.recipes["metallurgy-electrum-alloy"].enabled = true
					game.player.print(game.gettext("msg-electrum"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*68) then 
		if not game.player.force.recipes["metallurgy-gunmetal"].enabled then
			if glob.time > math.random(7500,15000) and glob.counter.dytech > math.random(50000,150000) and game.player.force.recipes["metallurgy-zinc-smelt"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["metallurgy-gunmetal"].enabled = true
					game.player.force.recipes["metallurgy-gunmetal-alloy"].enabled = true
					game.player.print(game.gettext("msg-gunmetal"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*69) then 
		if not game.player.force.recipes["pipe-mainline"].enabled then
			if glob.counter.energy > math.random(500,1500) and glob.counter.plates > math.random(25000,50000) and glob.counter.tech > math.random(5000,15000) and game.player.force.recipes["metallurgy-bronze"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["pipe-mainline"].enabled = true
					game.player.force.recipes["pump-to-mainline"].enabled = true
					game.player.force.recipes["pump-from-mainline"].enabled = true
					game.player.force.recipes["pump-inline-mainline"].enabled = true
					game.player.print(game.gettext("msg-mainline"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*70) then 
		if not game.player.force.recipes["brass-gear-wheel"].enabled then
			if glob.counter.gear > math.random(500,1500) and glob.counter.tech > math.random(5000,15000) and game.player.force.recipes["metallurgy-brass"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["brass-gear-wheel"].enabled = true
					game.player.force.recipes["mold-crafting-gear-3"].enabled = true
					game.player.print(game.gettext("msg-brass-gears"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*71) then 
		if not game.player.force.recipes["tungsten-gear-wheel"].enabled then
			if glob.counter.gear > math.random(500,1500) and glob.counter.tech > math.random(5000,15000) and game.player.force.recipes["metallurgy-tungsten-smelt"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["tungsten-gear-wheel"].enabled = true
					game.player.force.recipes["mold-crafting-gear-4"].enabled = true
					game.player.print(game.gettext("msg-tungsten-gears"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*72) then 
		if not game.player.force.recipes["copper-tungsten-gear-wheel"].enabled then
			if glob.counter.gear > math.random(500,1500) and glob.counter.tech > math.random(5000,15000) and game.player.force.recipes["metallurgy-copper-tungsten"].enabled then
				if DynamicFailure(glob.counter.dytech) then
					glob.counter.tech = (glob.counter.tech-math.random(glob.counter.tech/2))
					game.player.print(game.gettext("msg-dynamic-failure"))
				else
					game.player.force.recipes["copper-tungsten-gear-wheel"].enabled = true
					game.player.force.recipes["mold-crafting-gear-5"].enabled = true
					game.player.print(game.gettext("msg-copper-tungsten-gears"))
					game.player.force.resetrecipes()
				end
			end
		end
	end
	if event.tick%ttime==(r*73) then 
		if not game.player.force.recipes["mold-crafting-wire-2"].enabled then
			if game.player.force.recipes["green-wire"].enabled and glob.time > 9000 then
				game.player.force.recipes["mold-crafting-wire-2"].enabled = true
				game.player.force.recipes["mold-crafting-wire-3"].enabled = true
				game.player.print(game.gettext("msg-craft-wire-1"))
				game.player.force.resetrecipes()
			end
		end
	end
end

function dynamicRewards(event)
	if event.tick%3600==0 then
		if not glob.reward.axe1 then 
			if glob.counter.dytech > math.random(5000,7500) then
				game.player.insert{name="tungsten-axe",count=1}
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