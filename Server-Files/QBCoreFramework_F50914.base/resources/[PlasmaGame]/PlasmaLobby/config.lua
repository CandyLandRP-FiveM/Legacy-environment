HaveTeamDeathMatch = true
HaveCaptureTheOrbs = false
HaveRandomWeapon   = true
-- HaveBurningMode    = false NOT IMPLEMENTED

MaxPlayerPerTeam = 10
MaxRound = 10

GunName = "WEAPON_PLASMAP" --The Gun used in game. You can have weird issue if you use classic GTA Weapon, I recommend to use modded ADDON (no replace) gun.
GunDamage = 1.0 -- The damage that the gun Deal. You have to put here the damage that the gun deal, its used to heal player after taking a shot.

ShowBlips = false

UseThirdEye = true      -- Use targetting system instead of marker
WhichThirdEye = "qb"     -- Which targetting system "ox" or "qb" (only OX_target and QB-Target are available, but you can edit target.lua file to add your own targetting system)


LstGun = {
	 "WEAPON_PLASMAP",
	 "WEAPON_RAZORBACK",
	 "WEAPON_NEEDLER2",
	 "WEAPON_RAYSHOTGUN"
}

PlasmaWeaponToHash = {
	["WEAPON_PLASMAP_BLUE"]     =  `WEAPON_PLASMAP_BLUE`   ,
	["WEAPON_PLASMAP_RED"]      =  `WEAPON_PLASMAP_RED`    ,
	["WEAPON_RAZORBACK_BLUE"]   =  `WEAPON_RAZORBACK_BLUE` ,
	["WEAPON_RAZORBACK_RED"]    =  `WEAPON_RAZORBACK_RED`  ,
	["WEAPON_NEEDLER2_BLUE"]    =  `WEAPON_NEEDLER2_BLUE`  ,
	["WEAPON_NEEDLER2_RED"]     =  `WEAPON_NEEDLER2_RED`   ,
	["WEAPON_RAYSHOTGUN_BLUE"]  =  `WEAPON_RAYSHOTGUN_BLUE`,
	["WEAPON_RAYSHOTGUN_RED"]   =  `WEAPON_RAYSHOTGUN_RED` ,
}

HashToPlasmaWeapon = {
	[`WEAPON_PLASMAP_BLUE`]      =  "WEAPON_PLASMAP_BLUE",   
	[`WEAPON_PLASMAP_RED`]       =  "WEAPON_PLASMAP_RED"  , 
	[`WEAPON_RAZORBACK_BLUE`]    =  "WEAPON_RAZORBACK_BLUE", 
	[`WEAPON_RAZORBACK_RED`]     =  "WEAPON_RAZORBACK_RED" ,
	[`WEAPON_NEEDLER2_BLUE`]     =  "WEAPON_NEEDLER2_BLUE"  ,
	[`WEAPON_NEEDLER2_RED`]      =  "WEAPON_NEEDLER2_RED"  ,
	[`WEAPON_RAYSHOTGUN_BLUE`]   =  "WEAPON_RAYSHOTGUN_BLUE",
	[`WEAPON_RAYSHOTGUN_RED`]    =  "WEAPON_RAYSHOTGUN_RED"
}

print("Lst Gun : "..tostring(#LstGun))
Maps = {
	["Patoche"] = {
	["Available"] = true,
	["Capture The Orbs"] = true, -- Is Capture the Flag available on this map ?
	["Team DeathMatch"] = true, -- Is Team Death Match available on this map ?
	["Random Weapon"] = true, -- Is RandomWeapon available on this map ?
	["Burning Mode"] = true, -- Is BurningMode available on this map ?
	
	["AvailableSpawnSize"] = 2.0,
	
	["blueCoords"] = 	{x=2347.68,y=3073.72,z=33.16}, 
	["redCoords"] = 	{x=2399.5,y=3073.08,z=33.16}, 
	["blueFlagCoords"] ={x=2354.15,y=3088.64,z=33.16,h=301.78},
	["redFlagCoords"] = {x=2388.53,y=3086.65,z=33.16,h=344.07}, 
	["mapRedOutCoords"] = {{x=2400.59,y=3075.3,z=33.16,h=111.06}},
	["mapBlueOutCoords"] = {{x=2348.27,y=3073.99,z=33.16,h=269.92}},
	},

	["Patochemap2"] = {
	["Available"] = true,
	["Capture The Orbs"] = true, -- Is Capture the Flag available on this map ?
	["Team DeathMatch"] = true, -- Is Team Death Match available on this map ?
	["Random Weapon"] = true, -- Is RandomWeapon available on this map ?
	["Burning Mode"] = true, -- Is BurningMode available on this map ?
	
	["AvailableSpawnSize"] = 2.0,

	["blueCoords"] = 	{x=2347.68,y=3073.72,z=33.16}, 
	["redCoords"] = 	{x=2399.5,y=3073.08,z=33.16}, 
	["blueFlagCoords"] ={x=2354.15,y=3088.64,z=33.16,h=301.78},
	["redFlagCoords"] = {x=2388.53,y=3086.65,z=33.16,h=344.07}, 
	["mapRedOutCoords"] = {{x=2400.59,y=3075.3,z=33.16,h=111.06}},
	["mapBlueOutCoords"] = {{x=2348.27,y=3073.99,z=33.16,h=269.92}},
	},

	["Patochemap3"] = {
	["Available"] = true,
	["Capture The Orbs"] = true, -- Is Capture the Flag available on this map ?
	["Team DeathMatch"] = false, -- Is Team Death Match available on this map ?
	["Random Weapon"] = false, -- Is RandomWeapon available on this map ?
	["Burning Mode"] = false, -- Is BurningMode available on this map ?
	
	["AvailableSpawnSize"] = 2.0,
	
	["blueCoords"] = 	{x=2347.68,y=3073.72,z=33.16}, 
	["redCoords"] = 	{x=2399.5,y=3073.08,z=33.16}, 
	["blueFlagCoords"] ={x=2354.15,y=3088.64,z=33.16,h=301.78},
	["redFlagCoords"] = {x=2388.53,y=3086.65,z=33.16,h=344.07}, 
	["mapRedOutCoords"] = {{x=2400.59,y=3075.3,z=33.16,h=111.06}},
	["mapBlueOutCoords"] = {{x=2348.27,y=3073.99,z=33.16,h=269.92}},
	},

	["Patochemap4"] = { --AZTEC
	["Available"] = true,
	["Capture The Orbs"] = true, -- Is Capture the Flag available on this map ?
	["Team DeathMatch"] = true, -- Is Team Death Match available on this map ?
	["Random Weapon"] = true, -- Is RandomWeapon available on this map ?
	["Burning Mode"] = true, -- Is BurningMode available on this map ?
		
	["AvailableSpawnSize"] = 2.0,

	["blueCoords"] = 	{x=2347.68,y=3073.72,z=33.16}, 
	["redCoords"] = 	{x=2399.5,y=3073.08,z=33.16}, 
	["blueFlagCoords"] ={x=2354.15,y=3088.64,z=33.16,h=301.78},
	["redFlagCoords"] = {x=2388.53,y=3086.65,z=33.16,h=344.07}, 
	["mapRedOutCoords"] = {{x=2400.59,y=3075.3,z=33.16,h=111.06}},
	["mapBlueOutCoords"] = {{x=2348.27,y=3073.99,z=33.16,h=269.92}},
	},

	["Patochemap5"] = {
	["Available"] = true,
	["Capture The Orbs"] = true, -- Is Capture the Flag available on this map ?
	["Team DeathMatch"] = true, -- Is Team Death Match available on this map ?
	["Random Weapon"] = true, -- Is RandomWeapon available on this map ?
	["Burning Mode"] = true, -- Is BurningMode available on this map ?
		
	["AvailableSpawnSize"] = 2.0,
	
	["blueCoords"] = 	{x=2347.68,y=3073.72,z=33.16}, 
	["redCoords"] = 	{x=2399.5,y=3073.08,z=33.16}, 
	["blueFlagCoords"] ={x=2354.15,y=3088.64,z=33.16,h=301.78},
	["redFlagCoords"] = {x=2388.53,y=3086.65,z=33.16,h=344.07}, 
	["mapRedOutCoords"] = {{x=2400.59,y=3075.3,z=33.16,h=111.06}},
	["mapBlueOutCoords"] = {{x=2348.27,y=3073.99,z=33.16,h=269.92}},
	},
	
	--["MarcMLO"] = {
	--["Available"] = false,
	--["Capture The Orbs"] = false, -- Is Capture the Flag available on this map ?
	--["Team DeathMatch"] = true, -- Is Team Death Match available on this map ?
	--["Random Weapon"] = true, -- Is RandomWeapon available on this map ?
	--["Burning Mode"] = true, -- Is BurningMode available on this map ?
	--
	--["AvailableSpawnSize"] = 2.0,
	--
	--["blueCoords"] = {x=587.72491455078,y=2753.2062988281,z=46.993984222412},
	--["redCoords"] = {x=594.78063964844,y=2753.9221191406,z=46.993988037109},
	--["blueFlagCoords"] = {x=579.14154052734,y=2745.5856933594,z=42.142532348633,h=3.0212199687958},
	--["redFlagCoords"] = {x=604.88806152344,y=2747.576171875,z=42.142490386963,h=7.2482562065125},
	--
	--["mapRedOutCoords"] = {{x=595.02532958984,y=2757.8576660156,z=42.142501831055,h=354.65277099609}},
	---- ["mapBlueOutCoords"] = {x=-1121.7076416016,y=-1231.3385009766,z=-79.970596313477,h=176.43196105957},
	--},
}


PaintBallShop = {
	["PlasmaGame One"] = {
		["Blip"] = {x=-1084.7562255859,y=-1280.9090576172,z=5.6599960327148,sprite=650,scale=0.8,colour=2},
		["Create"] = {{x=2359.94,y=3067.4,z=33.26,h=180.58}}, 
		["Join"] = 	{
					{x=2366.68,y=3070.6,z=33.26,h=7.32},
					{x=2366.68,y=3070.6,z=33.26,h=7.32},
					},
		["Out"] = {x=2367.25,y=3066.94,z=33.26,h=284.17},
		["MapAvailable"] = {"Patoche","MarcMLO","Patochemap2","Patochemap3","Patochemap4","Patochemap5"},
		
	
	},

	["Plasma 3000"] = {
		["Blip"] = {x=-2249.6872558594,y=197.3249206543,z=174.60237121582,h=115.09670257568,sprite=650,scale=0.8,colour=1},
		["Create"] = {{x=-2236.0327148438,y=207.17329406738,z=174.85327148438,h=298.05242919922}},
		["Join"] = 	{
					{x=-2236.6467285156,y=210.18165588379,z=174.84729003906,h=23.64063835144},
					{x=-2231.1970214844,y=198.7681427002,z=174.84747314453,h=285.80697631836},
					},
		["Out"] = {x=-2239.7763671875,y=206.87864685059,z=174.84732055664,h=299.00036621094},
		["MapAvailable"] = {"Patoche","MarcMLO","Patochemap2","Patochemap3","Patochemap4","Patochemap5"},
		
	
	},
}

FemaleOutfit = {
[3] = {model = 8, colorA = 0, colorB = 0},       -- Torso / Arms / Bras
[4] = {model = 98, colorA = 2, colorB = 1},      -- Legs / Pants / Jambe
[6] = {model = 71, colorA = 2, colorB = 1},      -- Feet / Shoes / Chaussure
                                                
[7] = {model = 0, colorA = 0, colorB = 0},       --Accessories / Accessoires
[8] = {model = 8, colorA = 0, colorB = 0},       --Undershirt / T-Shirt
[9] = {model = 0, colorA = 0, colorB = 0},       --Kevlar
[11] = {model = 254, colorA = 2, colorB = 1}     --Tops / Veste
                                                
}                                                
                                                
MaleOutfit = {                              
[3] = {model = 7, colorA = 0, colorB = 0},       -- Torso / Arms / Bras
[4] = {model = 95, colorA = 2, colorB = 1},      -- Legs / Pants / Jambe
[6] = {model = 68, colorA = 2, colorB = 1},      -- Feet / Shoes / Chaussure
                                                
[7] = {model = 0, colorA = 0, colorB = 0},       --Accessories / Accessoires
[8] = {model = 15, colorA = 0, colorB = 0},      --Undershirt / T-Shirt
[9] = {model = 0, colorA = 0, colorB = 0},       --Kevlar
[11] = {model = 246, colorA = 2, colorB = 1},    --Tops / Veste
}


--Custom Mask :
useCustomMask = true

FemaleMask = {
[1]={model = 107, colorA = 7, colorB = 1},
[2]={model = 108, colorA = 0, colorB = 1}
}

MaleMask = {
[1]={model = 107, colorA = 7, colorB = 1},
[2]={model = 108, colorA = 0, colorB = 1}
}