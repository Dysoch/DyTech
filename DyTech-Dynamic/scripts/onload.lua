module("OnLoad", package.seeall)
require("util")

function OnLoad()
	if not glob.DynamicSystem then glob.DynamicSystem=false end
	if not glob.HardMode then glob.HardMode=false end
	if not glob.modules then glob.modules={core=false, energy=false, inserters=false, logistic=false, metallurgy=false, meteors=false, automation=false, modules=false, storage=false, tools=false, transportation=false, warfare=false, compatibility=false, genetics=false} end
	if not glob.modules.genetics then glob.modules.genetics=false end
	if not glob.counter then glob.counter={dytech=0, gear=0, resource=0, mining=0, robot=0, ammo=0, gun=0, machine=0, capsule=0, tech=0, plates=0, inserter=0, energy=0, chest=0, armor=0, gems=0, belt=0, turret=0, alien=0, science=0, wall=0, modules=0, pipes=0, transport=0} end
	if not glob.counter.dytech then glob.counter.dytech=0 end
	if not glob.counter.gear then glob.counter.gear=0 end
	if not glob.counter.resource then glob.counter.resource=0 end
	if not glob.counter.mining then glob.counter.mining=0 end
	if not glob.counter.robot then glob.counter.robot=0 end
	if not glob.counter.ammo then glob.counter.ammo=0 end
	if not glob.counter.gun then glob.counter.gun=0 end
	if not glob.counter.machine then glob.counter.machine=0 end
	if not glob.counter.capsule then glob.counter.capsule=0 end
	if not glob.counter.tech then glob.counter.tech=0 end
	if not glob.counter.plates then glob.counter.plates=0 end
	if not glob.counter.inserter then glob.counter.inserter=0 end
	if not glob.counter.energy then glob.counter.energy=0 end
	if not glob.counter.chest then glob.counter.chest=0 end
	if not glob.counter.armor then glob.counter.armor=0 end
	if not glob.counter.gems then glob.counter.gems=0 end
	if not glob.counter.belt then glob.counter.belt=0 end
	if not glob.counter.turret then glob.counter.turret=0 end
	if not glob.counter.alien then glob.counter.alien=0 end
	if not glob.counter.science then glob.counter.science=0 end
	if not glob.counter.wall then glob.counter.wall=0 end
	if not glob.counter.modules then glob.counter.modules=0 end
	if not glob.counter.pipes then glob.counter.pipes=0 end
	if not glob.counter.transport then glob.counter.transport=0 end
	if not glob.combat then glob.combat={dytech=0, small=0, medium=0, big=0, berserker=0, elder=0, king=0, queen=0, dogenemy=0, dogenemy=0, bird=0} end
	if not glob.combat.dytech then glob.combat.dytech=0 end
	if not glob.combat.small then glob.combat.small=0 end
	if not glob.combat.medium then glob.combat.medium=0 end
	if not glob.combat.big then glob.combat.big=0 end
	if not glob.combat.berserker then glob.combat.berserker=0 end
	if not glob.combat.elder then glob.combat.elder=0 end
	if not glob.combat.king then glob.combat.king=0 end
	if not glob.combat.queen then glob.combat.queen=0 end
	if not glob.combat.dogenemy then glob.combat.dogenemy=0 end
	if not glob.combat.dogplayer then glob.combat.dogplayer=0 end
	if not glob.combat.bird then glob.combat.bird=0 end
	if not glob.timer then glob.timer={seconds=0, minutes=0, hours=0} end
	if not glob.timer.seconds then glob.timer.seconds=0 end
	if not glob.timer.minutes then glob.timer.minutes=0 end
	if not glob.timer.hours then glob.timer.hours=0 end
	if not glob.SystemShutoff then glob.SystemShutoff=false end
	if not glob.EventCheck then glob.EventCheck={event001=false, event002=false, event003=false, event004=false, event005=false, event006=false, event007=false, event008=false, event009=false, event010=false, event011=false, event012=false, event013=false, event014=false, event015=false, event016=false, event017=false, event018=false, event019=false, event020=false, event021=false, event022=false, event023=false, event024=false, event025=false, event026=false, event027=false, event028=false, event029=false, event030=false, event031=false, event032=false, event033=false, event034=false, event035=false, event036=false, event037=false, event038=false, event039=false, event040=false, event041=false, event042=false, event043=false, event044=false, event045=false, event046=false, event047=false, event048=false, event049=false, event050=false, event051=false, event052=false, event053=false, event054=false, event055=false, event056=false, event057=false, event058=false, event059=false, event060=false, event061=false, event062=false, event063=false, event064=false, event065=false, event066=false, event067=false, event068=false, event069=false, event070=false, event071=false, event072=false, event073=false, event074=false, event075=false, event076=false, event077=false, event078=false, event079=false, event080=false, event081=false, event082=false, event083=false, event084=false, event085=false, event086=false, event087=false, event088=false, event089=false, event090=false, event091=false, event092=false, event093=false, event094=false, event095=false, event096=false, event097=false, event098=false, event099=false, event100=false, event101=false, event102=false, event103=false, event104=false, event105=false, event106=false, event107=false, event108=false, event109=false, event110=false, event111=false, event112=false, event113=false, event114=false, event115=false, event116=false, event117=false, event118=false, event119=false, event120=false, event121=false, event122=false, event123=false, event124=false, event125=false, event126=false, event127=false, event128=false, event129=false, event130=false, event131=false, event132=false, event133=false, event134=false, event135=false, event136=false, event137=false, event138=false, event139=false, event140=false, event141=false, event142=false, event143=false, event144=false, event145=false, event146=false, event147=false, event148=false, event149=false, event150=false, event151=false, event152=false, event153=false, event154=false, event155=false, event156=false, event157=false, event158=false, event159=false, event160=false, event161=false, event162=false, event163=false, event164=false, event165=false, event166=false, event167=false, event168=false, event169=false, event170=false, event171=false, event172=false, event173=false, event174=false, event175=false, event176=false, event177=false, event178=false, event179=false, event180=false, event181=false, event182=false, event183=false, event184=false, event185=false, event186=false, event187=false, event188=false, event189=false, event190=false, event191=false, event192=false, event193=false, event194=false, event195=false, event196=false, event197=false, event198=false, event199=false, event200=false, event201=false, event202=false, event203=false, event204=false, event205=false, event206=false, event207=false, event208=false, event209=false, event210=false, event211=false, event212=false, event213=false, event214=false, event215=false, event216=false, event217=false, event218=false, event219=false, event220=false, event221=false, event222=false, event223=false, event224=false, event225=false, event226=false, event227=false, event228=false, event229=false, event230=false, event231=false, event232=false, event233=false, event234=false, event235=false, event236=false, event237=false, event238=false, event239=false, event240=false, event241=false, event242=false, event243=false, event244=false, event245=false, event246=false, event247=false, event248=false, event249=false, event250=false, event251=false, event252=false, event253=false, event254=false, event255=false, event256=false, event257=false, event258=false, event259=false, event260=false, event261=false, event262=false, event263=false, event264=false, event265=false, event266=false, event267=false, event268=false, event269=false, event270=false, event271=false, event272=false, event273=false, event274=false, event275=false, event276=false, event277=false, event278=false, event279=false, event280=false, event281=false, event282=false, event283=false, event284=false, event285=false, event286=false, event287=false, event288=false, event289=false, event290=false, event291=false, event292=false, event293=false, event294=false, event295=false, event296=false, event297=false, event298=false, event299=false, event300=false} end
end