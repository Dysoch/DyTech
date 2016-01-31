module("fs", package.seeall)
require "config"

function Startup()
	if not global.RandomEntity then global.RandomEntity = {} end
	if not global.RandomEntity.Loot then global.RandomEntity.Loot = {"stone"} end
	if not global.RandomEntity.Ruins  then global.RandomEntity.Ruins = {"stone-ruin-1", "stone-ruin-2", "stone-ruin-3", "stone-ruin-4", "stone-ruin-5", "stone-ruin-6", "stone-ruin-7", "stone-ruin-8", "scorchmark-1", "scorchmark-2"} end
	if not global.RandomEntity.Special_Loot then global.RandomEntity.Special_Loot = {"pistol"} end
	Add_To_Random_Entity()
	if not global.RandomEntity.Ruins_Spawned  then global.RandomEntity.Ruins_Spawned = {} end
	if not global.RandomEntity.Ruins_Spawned.Total  then global.RandomEntity.Ruins_Spawned.Total = 0 end
	if not global.RandomEntity.Ruins_Spawned.Chunk  then global.RandomEntity.Ruins_Spawned.Chunk = 0 end
	if not global.RandomEntity.Chests then global.RandomEntity.Chests = {"wooden-chest", "iron-chest", "steel-chest", "smart-chest"} end
	if not global.RandomEntity.Massive_Ruins_Spawned  then global.RandomEntity.Massive_Ruins_Spawned = {} end
	if not global.RandomEntity.Massive_Ruins_Spawned.Total  then global.RandomEntity.Massive_Ruins_Spawned.Total = 1 end
	if not global.RandomEntity.Massive_Ruins_Spawned.Chunk  then global.RandomEntity.Massive_Ruins_Spawned.Chunk = 0 end
	if not global.Counter then global.Counter = {Chunks=0, Total=0, Loot=0, Ruins=0, Chests=0, Massive_Ruins=0, Loot_ItemCount=0, Chests_Loot_ItemCount=0} end
	if not global.XP then global.XP = {} end
	if not global.XP.Level then global.XP.Level = 0 end
	if not global.XP.GUI then global.XP.GUI = false end
	if not global.XP.Crafting then global.XP.Crafting = {} end
	if not global.XP.Crafting.Total then global.XP.Crafting.Total = 0 end
	if not global.XP.Crafting.Set then global.XP.Crafting.Set = 0 end
	if not global.XP.Crafting.Level then global.XP.Crafting.Level = 1 end
	if not global.XP.Crafting.Needed then global.XP.Crafting.Needed = math.random(25,150) end
	if not global.XP.Crafting.Bonus then global.XP.Crafting.Bonus = 0 end
	if not global.XP.Mining then global.XP.Mining = {} end
	if not global.XP.Mining.Total then global.XP.Mining.Total = 0 end
	if not global.XP.Mining.Set then global.XP.Mining.Set = 0 end
	if not global.XP.Mining.Level then global.XP.Mining.Level = 1 end
	if not global.XP.Mining.Needed then global.XP.Mining.Needed = math.random(25,150) end
	if not global.XP.Mining.Bonus then global.XP.Mining.Bonus = 0 end
	if not global.XP.Fighting then global.XP.Fighting = {} end
	if not global.XP.Fighting.Category then global.XP.Fighting.Category = {"bullet","rocket","flame-thrower","shotgun-shell","railgun","cannon-shell","combat-robot-laser","laser-turret","electric","capsule","combat-robot-beam"} end
	if not global.XP.Fighting.Level then global.XP.Fighting.Level = 1 end
	if not global.XP.Fighting.Needed then global.XP.Fighting.Needed = math.random(100,250) end
	if not global.XP.Fighting.Bonus then global.XP.Fighting.Bonus = 0 end
	if not global.XP.Fighting.Killed_Total then global.XP.Fighting.Killed_Total = 0 end
	if not global.XP.Fighting.Killed_Set then global.XP.Fighting.Killed_Set = 0 end
	if not global.XP.Fighting.Extinction then global.XP.Fighting.Extinction = 0 end
	if not global.XP.Research then global.XP.Research = 0 end
	if not global.Testers then global.Testers = {"SuicidalKid","WoodyDaOcas","L0771","Chernosliv","Xterminator","Oninaig","Bonsai","DreamSmith","Ritoshi"} end
	if not global.TestersDone then global.TestersDone = {SuicidalKid=false,WoodyDaOcas=false,L0771=false,Chernosliv=false,Xterminator=false,Oninaig=false,Bonsai=false,DreamSmith=false,Ritoshi=false} end
end

function Chunk_Increaser()
	if not global.Counter.Chunks then 
		global.Counter.Chunks = 1
	else 
		global.Counter.Chunks = global.Counter.Chunks + 1
	end
end

function CheckTesters()
	if global.TestersDone.SuicidalKid and global.TestersDone.WoodyDaOcas and global.TestersDone.L0771 and global.TestersDone.Chernosliv and global.TestersDone.Xterminator and global.TestersDone.Oninaig and global.TestersDone.Bonsai and global.TestersDone.DreamSmith and global.TestersDone.Ritoshi then
		return true
	else
		return false
	end
end

function Add_To_Random_Entity()
	if not Config.Leveled_Loot_List then
		global.RandomEntity.Loot = {}
		global.RandomEntity.Special_Loot = {}
		for name,bla in pairs(game.item_prototypes) do
			if string.sub(name,1,7) ~= "cursed-" then
				table.insert(global.RandomEntity.Loot,name)
				table.insert(global.RandomEntity.Special_Loot,name)
			end
		end
		debug("Added all items from all mods to the Loot table")
	end
end

function Amount_Players()
	global.Players = 0
	for _,player in pairs(game.players) do
		global.Players = global.Players + 1
	end
	return global.Players
end

function checkMatch100(percent)
local chance = math.random(100)
local pos = 1 -- 'saved' state for checkMatch
local chances = {
	66, 30, 100, 29, 28, 59, 69, 9, 6, 70, 18, 23, 76, 81, 57, 68, 22, 75, 52, 14, 73, 15, 37, 7, 39, 25, 96, 34, 80, 87, 21, 17, 92, 13, 63, 99, 47, 65, 38, 61, 84, 55, 1, 3, 89, 41, 83, 74, 5, 27, 53, 4, 49, 44, 67, 71, 91, 24, 46, 64, 48, 95, 98, 94, 35, 90, 79, 42, 58, 36, 16, 93, 8, 10, 31, 86, 62, 11, 20, 2, 50, 12, 60, 54, 97, 82, 45, 33, 56, 43, 51, 26, 72, 32, 19, 88, 78, 77, 40, 85}
	for i=pos, (pos+percent) do
		if chance == chances[i] then 
			return true 
		end
	end
	pos = pos + percent 
	return false
end

function checkMatch1000(percent)
-- This percentage checkers is more accurate, since it can go from 1 to 1000, instead of 1 to 100. This allows more accurate spawn chances
local chance = math.random(1000)
local pos = 1 -- 'saved' state for checkMatch
local chances = {
	194,187,477,108,346,569,890,935,951,704,342,21,546,380,614,38,803,128,541,416,440,972,714,113,96,48,222,130,232,777,337,419,680,574,404,863,775,998,333,145,483,774,852,657,457,865,987,322,791,129,555,724,363,369,415,3,673,729,950,110,597,50,162,973,265,997,846,319,914,501,567,999,298,328,393,488,866,744,269,312,62,395,318,695,896,417,240,334,757,933,49,332,818,693,666,340,845,223,341,713,836,563,348,374,931,140,883,27,989,720,591,857,97,797,642,276,771,350,176,613,782,339,942,464,816,767,279,688,947,515,311,676,699,188,840,506,89,905,698,151,707,776,163,30,427,408,37,829,727,396,266,906,241,387,683,409,41,945,465,58,52,530,479,433,87,661,697,579,451,100,735,671,166,261,510,633,627,519,46,641,823,137,702,970,602,251,133,620,117,204,812,260,221,124,378,893,542,300,147,294,28,156,672,389,420,23,281,497,355,474,467,756,691,34,878,125,885,590,448,429,992,979,835,345,248,750,568,309,983,963,287,943,521,640,35,584,769,196,760,119,919,80,92,902,927,748,925,17,570,660,247,203,456,449,984,784,343,609,842,930,149,589,146,321,178,112,929,624,861,739,766,598,391,716,556,236,923,886,103,507,286,329,969,761,513,682,167,843,903,118,254,938,59,381,262,255,366,626,848,653,758,252,799,913,612,508,650,484,245,586,91,850,638,325,81,503,822,514,651,202,148,815,195,388,679,937,832,669,39,313,185,796,233,182,734,264,770,572,109,787,658,753,57,830,798,901,230,217,577,814,295,29,106,358,25,897,177,383,871,667,834,681,630,904,367,211,604,153,551,492,800,143,250,74,811,234,558,907,413,786,778,547,967,912,482,826,838,480,793,305,794,253,225,862,736,76,271,610,511,710,180,284,327,977,692,98,296,218,299,496,43,471,139,131,258,126,708,622,616,85,445,544,157,847,928,687,523,193,55,755,632,152,662,980,466,911,747,837,643,974,95,910,450,961,375,357,77,189,785,274,470,527,159,982,675,425,617,278,807,741,646,285,468,670,891,773,976,500,573,47,731,399,190,924,772,183,402,954,444,932,820,227,493,430,141,72,494,549,410,73,685,879,243,33,238,711,397,412,454,127,228,447,768,386,66,562,804,473,169,7,703,684,645,197,581,516,376,884,442,306,870,164,45,752,259,229,434,421,237,105,637,732,201,368,529,762,290,214,5,810,948,330,314,364,136,150,504,461,985,545,900,874,42,165,459,161,400,855,808,338,908,158,550,273,856,463,65,740,959,955,20,674,40,107,605,78,14,411,344,371,872,210,936,226,90,990,114,443,481,422,489,940,608,648,301,781,725,283,104,875,51,414,728,709,668,172,207,320,361,986,224,372,93,647,993,431,205,915,53,916,472,629,18,726,270,877,949,801,559,352,956,536,174,452,828,869,54,154,696,88,446,392,353,509,749,962,370,99,179,4,686,607,308,423,576,844,934,918,435,111,583,132,15,876,249,779,898,636,971,336,813,102,548,953,543,246,512,831,730,706,618,101,123,12,138,64,75,619,418,853,69,600,599,873,851,316,593,560,881,257,231,60,737,825,293,689,317,994,981,499,946,453,277,566,742,315,795,288,1000,690,833,11,615,789,656,957,13,525,694,142,858,86,432,819,859,966,56,663,809,537,407,839,764,594,31,134,282,26,458,601,462,94,717,968,171,817,533,522,335,517,909,553,160,263,505,291,491,571,531,655,535,455,894,805,122,213,678,892,595,173,677,783,356,978,751,887,557,478,944,864,738,849,405,867,354,623,304,349,788,899,200,634,475,564,268,723,722,206,297,664,82,526,359,209,476,485,502,552,390,895,991,841,580,759,965,303,538,116,275,700,9,24,244,860,941,220,792,868,235,498,289,561,326,398,362,302,68,592,532,121,939,565,701,441,712,587,347,426,746,665,32,70,659,824,854,539,540,603,922,1,10,718,184,170,926,649,365,821,175,22,582,460,155,181,267,360,379,19,733,428,631,403,995,215,331,575,115,621,168,975,144,920,721,216,469,654,323,384,960,385,644,71,198,611,743,373,63,917,44,2,534,239,256,324,635,219,882,272,520,996,763,715,988,487,439,806,437,652,436,292,596,212,578,67,754,585,377,790,745,199,802,958,84,394,61,719,382,406,921,192,438,16,524,424,827,36,310,307,554,639,880,401,208,528,135,628,191,518,588,486,186,120,83,351,625,8,495,952,889,705,765,606,280,242,964,79,490,780,888,6}
	for i=pos, (pos+percent) do
		if chance == chances[i] then 
			return true 
		end
	end
	pos = pos + percent 
	return false
end

function SpawnCounter(statement, Amount)
	if not global.Counter then global.Counter = {Chunks=0, Total=0, Loot=0, Ruins=0, Chests=0, Massive_Ruins=0, Loot_ItemCount=0, Chests_Loot_ItemCount=0} end
	if statement == 1 then
		global.Counter.Loot = global.Counter.Loot + 1
		global.Counter.Loot_ItemCount = global.Counter.Loot_ItemCount + Amount
	elseif statement == 2 then
		global.Counter.Ruins = global.Counter.Ruins + 1
	elseif statement == 3 then
		global.Counter.Chests = global.Counter.Chests + 1
		global.Counter.Chests_Loot_ItemCount = global.Counter.Chests_Loot_ItemCount + Amount
	elseif statement == 4 then
		global.Counter.Massive_Ruins = global.Counter.Massive_Ruins + 1
	end
	global.Counter.Total = global.Counter.Total + 1
end