print("^2Jim^7-^2DJBooth ^7v^41^7.^43^7.^42 ^2by ^1qbcore^7")

Config = {
	Lan = "en",
	Debug = false, -- Set to true to show target locations

	Core = "qb-core",
	Menu = "qb",
	Notify = "okok",

	Locations = {
		{ -- Vanilla Unicorn DJ Booth
			job = "moore", -- Set this to required job role
			enableBooth = true, -- option to disable rather than deleting code
			DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
			radius = 30, -- The radius of the sound from the booth
			coords = vec3(120.0, -1281.72, 29.48), -- Where the booth is located
		},
		{ -- Vanilla Unicorn DJ Booth
			job = "moore", -- Set this to required job role
			enableBooth = true, -- option to disable rather than deleting code
			DefaultVolume = 0.1, -- 0.01 is lowest, 1.0 is max
			radius = 30, -- The radius of the sound from the booth
			coords = vector3(112.25, -1299.48, 35.01), -- Where the booth is located
		},
		{ -- Sisyphus Theater
			job = "public", -- "public" makes it so anyone can add music.
			enableBooth = true,
			DefaultVolume = 0.15,
			radius = 200,
			coords = vec3(206.9, 1181.04, 226.51),
			soundLoc = vec3(212.32, 1155.87, 227.01), -- Add sound origin location if you don't want the music to play from the dj booth
		},
		{ -- Henhouse (smokeys MLO coords)
			job = "henhouse",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(-311.35, 6265.18, 32.06),
		},
		{ -- Tequilala bar (ingame mlo)
			job = "tequilala",
			enableBooth = false,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(-549.68, 282.64, 82.98),
		},
		{ -- GabzTuners Radio Prop
			job = "mechanic",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(127.04, -3030.65, 6.80),
			prop = `prop_radio_01`	-- Prop to spawn at location, if the location doesn't have one already
									-- (can be changed to any prop, coords determine wether its placed correctly)
		},
		{ -- Gabz Popsdiner Radio Prop
			job = "public",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 30,
			coords = vec3(1595.53, 6453.02, 26.165),
			prop = `prop_boombox_01`
		},
		{ -- LostMC compound next to Casino
			gang = "lostmc",
			enableBooth = true,
			DefaultVolume = 0.1,
			radius = 20,
			coords = vec3(983.14, -133.17, 79.59),
			soundLoc = vec3(988.79, -131.62, 78.89), -- Add sound origin location if you don't want the music to play from the dj booth
		},
		{ -- Auto Exotics
		job = "autoexotics",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vec3(545.64, -165.85, 54.3),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Pink Cage
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vec3(335.23, -200.48, 54.09),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Cholos Tacos
		job = "nachodaddy",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vec3(978.58, -1387.53, 31.69),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Flokis
		job = "floki",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vec3(278.99, -1166.46, 29.27),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- MRPD
		job = "police",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vector3(451.96, -997.64, 35.84),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Legion Square
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 100,
		coords = vec3(195.82, -950.01, 30.09),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Cool Beans
		job = "coolbeans",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 30,
		coords = vec3(-1202.2620849609, -1139.6785888672, 7.8332686424255),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Pops Auto
		job = "pops",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vec3(699.74, -746.35, 24.99),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Hotel
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vec3(-304.29, 218.95, 91.75),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- Arcade
		job = "arcade",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vector3(2379.59, 3069.83, 33.27),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- pdm
		job = "pdm",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vector3(-27.57, -1092.14, 27.27),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- tavern
		job = "tavern",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vector3(1230.53, -424.16, 68.08),
		 -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- recycle
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vector3(739.94, -1374.39, 12.61),
	     -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- outside arcade
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 100,
		coords = vector3(2400.31, 3094.12, 48.51),
	     -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- LS River
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 100,
		coords = vector3(686.5, -1633.25, 12.73),
	     -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- upnatom
		job = "upandatom",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 30,
		coords = vector3(90.2, 280.37, 110.21),
	     -- Add sound origin location if you don't want the music to play from the dj booth
	    },
		{ -- CARIO
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 30,
		coords = vector3(4893.56, -4905.38, 3.49),
	     -- Add sound origin location if you don't want the music to play from the dj booth 
	    },
		{ -- cemetary
		job = "public",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 30,
		coords = vector3(-1645.01, -160.09, 57.77),
	     -- Add sound origin location if you don't want the music to play from the dj booth 
	    },
		{ -- pillbox
		job = "ambulance",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 30,
		coords = vector3(313.67, -594.11, 43.14),
	     -- Add sound origin location if you don't want the music to play from the dj booth 
	    },
		{ -- Njords
		job = "pawn",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 30,
		coords = vector3(178.51, -1316.23, 29.41),
	     -- Add sound origin location if you don't want the music to play from the dj booth 
	    },
		{ -- rws
		job = "rws",
		enableBooth = true,
		DefaultVolume = 0.1,
		radius = 50,
		coords = vector3(119.94, -3212.64, 6.02),
	     -- Add sound origin location if you don't want the music to play from the dj booth 
	    },
	},
}

Loc = {}