module("fs", package.seeall)
require("util")

function DynamicToggle()
	if glob.EventCheck.event001==true and glob.EventCheck.event002==true then
		glob.SystemShutoff = true
		game.player.print("Dynamic System is still running!!! Shutting off now might cause errors!")
		game.player.print("The System will shutdown after the loop is done!!!")
	else
		if glob.DynamicSystem==true then
			glob.DynamicSystem = false
			game.player.print("Dynamic System is now offline. Technologies however won't return! It's a shame to see you go :(")
		else
			glob.DynamicSystem = true
			game.player.print("Dynamic System is now online. Enjoy the System!")
			game.player.print("Ready for a challenge? Try the Hard Dynamic System! Command to activate it can be found in 'Console Commands' topic in the forum!")
		end
	end
end

function HardModeToggle()
	if glob.HardMode==true then
		glob.HardMode = false
		game.player.print("Dynamic System Hard Mode is now offline. The normal System has been activated once again!")
	else
		glob.HardMode = true
		game.player.print("Dynamic System Hard Mode is now online. Enjoy the very hard System!")
	end
end	

function CounterTransfer()
glob.counter.dytech=0 
glob.counter.gear=0 
glob.counter.resource=0 
glob.counter.mining=0 
glob.counter.robot=0 
glob.counter.ammo=0 
glob.counter.gun=0 
glob.counter.machine=0 
glob.counter.capsule=0 
glob.counter.tech=0 
glob.counter.plates=0 
glob.counter.inserter=0 
glob.counter.energy=0 
glob.counter.chest=0 
glob.counter.armor=0 
glob.counter.gems=0 
glob.counter.belt=0 
glob.counter.turret=0 
glob.counter.alien=0 
glob.counter.science=0 
glob.counter.wall=0 
glob.counter.modules=0 
glob.counter.pipes=0 
glob.counter.transport=0 
glob.counter.dytech = glob.counter.dytech + remote.call("DyTech-Core", "checkCounter", "dytech")
glob.counter.gear = glob.counter.gear + remote.call("DyTech-Core", "checkCounter", "gear")
glob.counter.resource = glob.counter.resource + remote.call("DyTech-Core", "checkCounter", "resource")
glob.counter.mining = glob.counter.mining + remote.call("DyTech-Core", "checkCounter", "mining")
glob.counter.robot = glob.counter.robot + remote.call("DyTech-Core", "checkCounter", "robot")
glob.counter.ammo = glob.counter.ammo + remote.call("DyTech-Core", "checkCounter", "ammo")
glob.counter.gun = glob.counter.gun + remote.call("DyTech-Core", "checkCounter", "gun")
glob.counter.machine = glob.counter.machine + remote.call("DyTech-Core", "checkCounter", "machine")
glob.counter.capsule = glob.counter.capsule + remote.call("DyTech-Core", "checkCounter", "capsule")
glob.counter.tech = glob.counter.tech + remote.call("DyTech-Core", "checkCounter", "tech")
glob.counter.plates = glob.counter.plates + remote.call("DyTech-Core", "checkCounter", "plates")
glob.counter.inserter = glob.counter.inserter + remote.call("DyTech-Core", "checkCounter", "inserter")
glob.counter.energy = glob.counter.energy + remote.call("DyTech-Core", "checkCounter", "energy")
glob.counter.chest = glob.counter.chest + remote.call("DyTech-Core", "checkCounter", "chest")
glob.counter.armor = glob.counter.armor + remote.call("DyTech-Core", "checkCounter", "armor")
glob.counter.gems = glob.counter.gems + remote.call("DyTech-Core", "checkCounter", "gems")
glob.counter.belt = glob.counter.belt + remote.call("DyTech-Core", "checkCounter", "belt")
glob.counter.turret = glob.counter.turret + remote.call("DyTech-Core", "checkCounter", "turret")
glob.counter.alien = glob.counter.alien + remote.call("DyTech-Core", "checkCounter", "alien")
glob.counter.science = glob.counter.science + remote.call("DyTech-Core", "checkCounter", "science")
glob.counter.wall = glob.counter.wall + remote.call("DyTech-Core", "checkCounter", "wall")
glob.counter.modules = glob.counter.modules + remote.call("DyTech-Core", "checkCounter", "modules")
glob.counter.pipes = glob.counter.pipes + remote.call("DyTech-Core", "checkCounter", "pipes")
glob.counter.transport = glob.counter.transport + remote.call("DyTech-Core", "checkCounter", "transport")
glob.timer.hours=0 
glob.timer.minutes=0 
glob.timer.seconds=0 
glob.timer.hours = glob.timer.hours + remote.call("DyTech-Core", "checkTimer", "hours")
glob.timer.minutes = glob.timer.minutes + remote.call("DyTech-Core", "checkTimer", "minutes")
glob.timer.seconds = glob.timer.seconds + remote.call("DyTech-Core", "checkTimer", "seconds")
end

function ModuleCheck()
	if remote.call("DyTech-Core", "detectModule", "core")==true then glob.modules.core = true else glob.modules.core = false end 
	if remote.call("DyTech-Core", "detectModule", "automation")==true then glob.modules.automation = true else glob.modules.automation = false end 
	if remote.call("DyTech-Core", "detectModule", "compatibility")==true then glob.modules.compatibility = true else glob.modules.compatibility = false end 
	if remote.call("DyTech-Core", "detectModule", "energy")==true then glob.modules.energy = true else glob.modules.energy = false end 
	if remote.call("DyTech-Core", "detectModule", "genetics")==true then glob.modules.genetics = true else glob.modules.genetics = false end 
	if remote.call("DyTech-Core", "detectModule", "inserters")==true then glob.modules.inserters = true else glob.modules.inserters = false end 
	if remote.call("DyTech-Core", "detectModule", "logistic")==true then glob.modules.logistic = true else glob.modules.logistic = false end 
	if remote.call("DyTech-Core", "detectModule", "metallurgy")==true then glob.modules.metallurgy = true else glob.modules.metallurgy = false end 
	if remote.call("DyTech-Core", "detectModule", "meteors")==true then glob.modules.meteors = true else glob.modules.meteors = false end 
	if remote.call("DyTech-Core", "detectModule", "modules")==true then glob.modules.modules = true else glob.modules.modules = false end 
	if remote.call("DyTech-Core", "detectModule", "storage")==true then glob.modules.storage = true else glob.modules.storage = false end 
	if remote.call("DyTech-Core", "detectModule", "tools")==true then glob.modules.tools = true else glob.modules.tools = false end 
	if remote.call("DyTech-Core", "detectModule", "transportation")==true then glob.modules.transportation = true else glob.modules.transportation = false end 
	if remote.call("DyTech-Core", "detectModule", "warfare")==true then glob.modules.warfare = true else glob.modules.warfare = false end 
end

function FailureMessage(ItemName)
	game.player.print(game.gettext("msg-failure-1").." "..ItemName.." "..game.gettext("msg-failure-2"))
end

function FailureReduction(CounterName, Counter, Number)
	local Random = math.random(Counter/Number)
	remote.call("DyTech-Core", "removefromCounter", "CounterName", Random)
end 

EventCheckNames=
{
	[[These names you can compare to the events. This way you can see what you have unlocked]],
	[[event001 = Main Crucial Event]],
	[[event002 = Main Crucial Event]], 
	[[event003 = Science Pack 1 Alternate Recipe 1]], 
	[[event004 = Science Pack 1 Alternate Recipe 2]], 
	[[event005 = Basic Inserter Alternate Recipe 1]], 
	[[event006 = Basic Inserter Alternate Recipe 2]], 
	[[event007 = Steel Furnace Mk 2]], 
	[[event008 = Steel Furnace Mk 3]], 
	[[event009 = Steel Furnace Mk 4]], 
	[[event010 = Steel Furnace Mk 5]], 
	[[event011 = Electric Furnace Mk 2]], 
	[[event012 = Electric Furnace Mk 3]], 
	[[event013 = Electric Furnace Mk 4]], 
	[[event014 = Electric Furnace Mk 5]], 
	[[event015 = DyTech-Automation Intermediates 1]], 
	[[event016 = DyTech-Automation Intermediates 2]], 
	[[event017 = DyTech-Automation Intermediates 3]], 
	[[event018 = DyTech-Automation Intermediates 4]], 
	[[event019 = Radar Mk 2]], 
	[[event020 = Radar Mk 3]], 
	[[event021 = Radar Mk 4]], 
	[[event022 = Radar Mk 5]], 
	[[event023 = Electric Mining Drill Mk 2]], 
	[[event024 = Electric Mining Drill Mk 3]], 
	[[event025 = Electric Mining Drill Mk 4]], 
	[[event026 = Electric Mining Drill Mk 5]], 
	[[event027 = Ultimate Mining Drill]], 
	[[event028 = Assembling Machine 4]], 
	[[event029 = Assembling Machine 5]], 
	[[event030 = Assembling Machine 6]], 
	[[event031 = Assembling Machine 7]], 
	[[event032 = None Yet]], 
	[[event033 = None Yet]], 
	[[event034 = None Yet]], 
	[[event035 = None Yet]], 
	[[event036 = None Yet]], 
	[[event037 = None Yet]], 
	[[event038 = None Yet]], 
	[[event039 = None Yet]], 
	[[event040 = None Yet]], 
	[[event041 = None Yet]], 
	[[event042 = None Yet]], 
	[[event043 = None Yet]], 
	[[event044 = None Yet]], 
	[[event045 = None Yet]], 
	[[event046 = None Yet]], 
	[[event047 = None Yet]], 
	[[event048 = None Yet]], 
	[[event049 = None Yet]], 
	[[event050 = None Yet]], 
	[[event051 = None Yet]], 
	[[event052 = None Yet]], 
	[[event053 = None Yet]], 
	[[event054 = None Yet]], 
	[[event055 = None Yet]], 
	[[event056 = None Yet]], 
	[[event057 = None Yet]], 
	[[event058 = None Yet]], 
	[[event059 = None Yet]], 
	[[event060 = None Yet]], 
	[[event061 = None Yet]], 
	[[event062 = None Yet]], 
	[[event063 = None Yet]], 
	[[event064 = None Yet]], 
	[[event065 = None Yet]], 
	[[event066 = None Yet]], 
	[[event067 = None Yet]], 
	[[event068 = None Yet]], 
	[[event069 = None Yet]], 
	[[event070 = None Yet]], 
	[[event071 = None Yet]], 
	[[event072 = None Yet]], 
	[[event073 = None Yet]], 
	[[event074 = None Yet]], 
	[[event075 = None Yet]], 
	[[event076 = None Yet]], 
	[[event077 = None Yet]], 
	[[event078 = None Yet]], 
	[[event079 = None Yet]], 
	[[event080 = None Yet]], 
	[[event081 = None Yet]], 
	[[event082 = None Yet]], 
	[[event083 = None Yet]], 
	[[event084 = None Yet]], 
	[[event085 = None Yet]], 
	[[event086 = None Yet]], 
	[[event087 = None Yet]], 
	[[event088 = None Yet]], 
	[[event089 = None Yet]], 
	[[event090 = None Yet]], 
	[[event091 = None Yet]], 
	[[event092 = None Yet]], 
	[[event093 = None Yet]], 
	[[event094 = None Yet]], 
	[[event095 = None Yet]], 
	[[event096 = None Yet]], 
	[[event097 = None Yet]], 
	[[event098 = None Yet]], 
	[[event099 = None Yet]], 
	[[event100 = None Yet]],
	[[event101 = None Yet]], 
	[[event102 = None Yet]], 
	[[event103 = None Yet]], 
	[[event104 = None Yet]], 
	[[event105 = None Yet]], 
	[[event106 = None Yet]], 
	[[event107 = None Yet]], 
	[[event108 = None Yet]], 
	[[event109 = None Yet]], 
	[[event110 = None Yet]], 
	[[event111 = None Yet]], 
	[[event112 = None Yet]], 
	[[event113 = None Yet]], 
	[[event114 = None Yet]], 
	[[event115 = None Yet]], 
	[[event116 = None Yet]], 
	[[event117 = None Yet]], 
	[[event118 = None Yet]], 
	[[event119 = None Yet]], 
	[[event120 = None Yet]], 
	[[event121 = None Yet]], 
	[[event122 = None Yet]], 
	[[event123 = None Yet]], 
	[[event124 = None Yet]], 
	[[event125 = None Yet]], 
	[[event126 = None Yet]], 
	[[event127 = None Yet]], 
	[[event128 = None Yet]], 
	[[event129 = None Yet]], 
	[[event130 = None Yet]], 
	[[event131 = None Yet]], 
	[[event132 = None Yet]], 
	[[event133 = None Yet]], 
	[[event134 = None Yet]], 
	[[event135 = None Yet]], 
	[[event136 = None Yet]], 
	[[event137 = None Yet]], 
	[[event138 = None Yet]], 
	[[event139 = None Yet]], 
	[[event140 = None Yet]], 
	[[event141 = None Yet]], 
	[[event142 = None Yet]], 
	[[event143 = None Yet]], 
	[[event144 = None Yet]], 
	[[event145 = None Yet]], 
	[[event146 = None Yet]], 
	[[event147 = None Yet]], 
	[[event148 = None Yet]], 
	[[event149 = None Yet]], 
	[[event150 = None Yet]], 
	[[event151 = None Yet]], 
	[[event152 = None Yet]], 
	[[event153 = None Yet]], 
	[[event154 = None Yet]], 
	[[event155 = None Yet]], 
	[[event156 = None Yet]], 
	[[event157 = None Yet]], 
	[[event158 = None Yet]], 
	[[event159 = None Yet]], 
	[[event160 = None Yet]], 
	[[event161 = None Yet]], 
	[[event162 = None Yet]], 
	[[event163 = None Yet]], 
	[[event164 = None Yet]], 
	[[event165 = None Yet]], 
	[[event166 = None Yet]], 
	[[event167 = None Yet]], 
	[[event168 = None Yet]], 
	[[event169 = None Yet]], 
	[[event170 = None Yet]], 
	[[event171 = None Yet]], 
	[[event172 = None Yet]], 
	[[event173 = None Yet]], 
	[[event174 = None Yet]], 
	[[event175 = None Yet]], 
	[[event176 = None Yet]], 
	[[event177 = None Yet]], 
	[[event178 = None Yet]], 
	[[event179 = None Yet]], 
	[[event180 = None Yet]], 
	[[event181 = None Yet]], 
	[[event182 = None Yet]], 
	[[event183 = None Yet]], 
	[[event184 = None Yet]], 
	[[event185 = None Yet]], 
	[[event186 = None Yet]], 
	[[event187 = None Yet]], 
	[[event188 = None Yet]], 
	[[event189 = None Yet]], 
	[[event190 = None Yet]], 
	[[event191 = None Yet]], 
	[[event192 = None Yet]], 
	[[event193 = None Yet]], 
	[[event194 = None Yet]], 
	[[event195 = None Yet]], 
	[[event196 = None Yet]], 
	[[event197 = None Yet]], 
	[[event198 = None Yet]], 
	[[event199 = None Yet]], 
	[[event200 = None Yet]],
	[[event201 = Steel Axe Reward (only happens without DyTech-Tools!)]], 
	[[event202 = None Yet]], 
	[[event203 = None Yet]], 
	[[event204 = None Yet]], 
	[[event205 = None Yet]], 
	[[event206 = None Yet]], 
	[[event207 = None Yet]], 
	[[event208 = None Yet]], 
	[[event209 = None Yet]], 
	[[event210 = None Yet]], 
	[[event211 = None Yet]], 
	[[event212 = None Yet]], 
	[[event213 = None Yet]], 
	[[event214 = None Yet]], 
	[[event215 = None Yet]], 
	[[event216 = None Yet]], 
	[[event217 = None Yet]], 
	[[event218 = None Yet]], 
	[[event219 = None Yet]], 
	[[event220 = None Yet]], 
	[[event221 = None Yet]], 
	[[event222 = None Yet]], 
	[[event223 = None Yet]], 
	[[event224 = None Yet]], 
	[[event225 = None Yet]], 
	[[event226 = None Yet]], 
	[[event227 = None Yet]], 
	[[event228 = None Yet]], 
	[[event229 = None Yet]], 
	[[event230 = None Yet]], 
	[[event231 = None Yet]], 
	[[event232 = None Yet]], 
	[[event233 = None Yet]], 
	[[event234 = None Yet]], 
	[[event235 = None Yet]], 
	[[event236 = None Yet]], 
	[[event237 = None Yet]], 
	[[event238 = None Yet]], 
	[[event239 = None Yet]], 
	[[event240 = None Yet]], 
	[[event241 = None Yet]], 
	[[event242 = None Yet]], 
	[[event243 = None Yet]], 
	[[event244 = None Yet]], 
	[[event245 = None Yet]], 
	[[event246 = None Yet]], 
	[[event247 = None Yet]], 
	[[event248 = None Yet]], 
	[[event249 = None Yet]], 
	[[event250 = None Yet]], 
	[[event251 = None Yet]], 
	[[event252 = None Yet]], 
	[[event253 = None Yet]], 
	[[event254 = None Yet]], 
	[[event255 = None Yet]], 
	[[event256 = None Yet]], 
	[[event257 = None Yet]], 
	[[event258 = None Yet]], 
	[[event259 = None Yet]], 
	[[event260 = None Yet]], 
	[[event261 = None Yet]], 
	[[event262 = None Yet]], 
	[[event263 = None Yet]], 
	[[event264 = None Yet]], 
	[[event265 = None Yet]], 
	[[event266 = None Yet]], 
	[[event267 = None Yet]], 
	[[event268 = None Yet]], 
	[[event269 = None Yet]], 
	[[event270 = None Yet]], 
	[[event271 = None Yet]], 
	[[event272 = None Yet]], 
	[[event273 = None Yet]], 
	[[event274 = None Yet]], 
	[[event275 = None Yet]], 
	[[event276 = None Yet]], 
	[[event277 = None Yet]], 
	[[event278 = None Yet]], 
	[[event279 = None Yet]], 
	[[event280 = None Yet]], 
	[[event281 = None Yet]], 
	[[event282 = None Yet]], 
	[[event283 = None Yet]], 
	[[event284 = None Yet]], 
	[[event285 = None Yet]], 
	[[event286 = None Yet]], 
	[[event287 = None Yet]], 
	[[event288 = None Yet]], 
	[[event289 = None Yet]], 
	[[event290 = None Yet]], 
	[[event291 = None Yet]], 
	[[event292 = None Yet]], 
	[[event293 = None Yet]], 
	[[event294 = None Yet]], 
	[[event295 = None Yet]], 
	[[event296 = None Yet]], 
	[[event297 = None Yet]], 
	[[event298 = None Yet]], 
	[[event299 = None Yet]],
	[[event300 = Main Crucial Event]],
	-- Something, something DARKSIDE!!! --
}