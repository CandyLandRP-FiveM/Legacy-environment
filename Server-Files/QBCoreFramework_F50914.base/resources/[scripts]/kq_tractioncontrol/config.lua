Config = {}

-- This enabled additional debug commands and logs
Config.debug = false

Config.traction = {
    -- The amount of grip that will be reduced during drift (higher = less grip)
    -- (Values between 0 & 60 = more realistic)
    -- (Values between 60 & 100 = more drifty)
    -- Values between 0 and 100
    reduceGrip = 60,

    -- How easily the vehicle will enter into drift (Higher numbers = more traction loss required for it to enter drift, aka, lower numbers will be more drifty)
    -- Values between 0.0 and 2.0
    driftThreshold = 0.9,
}

-- Whether or not to display that the traction control is turned off on the dashboard of the car
Config.showOnDashboards = true

-- Size of the 'ESP OFF' text on the dashboard
Config.fontScale = 0.15

----------------------------------------------------------------------------------------------
--- WHITE/BLACKLISTING
----------------------------------------------------------------------------------------------

-- Disallow certain vehicles or classes of vehicles from toggling the traction control
Config.blacklist = {
    -- List of models that should not be able to toggle the traction control
    vehiclesEnabled = false,
    vehicles = {
      'taxi',
    },
    
    -- Classes that should not be allowed to disable traction control (numerical values) https://docs.fivem.net/natives/?_0x29439776AAA00A62
    classesEnabled = false,
    classes = {
        8, 10, 11, 13, 14, 15, 16, 17, 19, 20, 21, 22
    },
}

-- Opposite of the blacklist. Only allows certain models/vehicle models to toggle their traction control
Config.whitelist = {
    vehiclesEnabled = true,
    -- List of models that should be able to toggle the traction control
    vehicles = {
        'baller',
        'bison',
        'blista',
        'blista2',
        'buccaneer',
        'buffalo',
        'buffalo2',
        'buffalo3',
        'buffalo4',
        'cavalcade',
        'club',
        'cogcabrio',
        'comet6',
        'contender',
        'coquette',
        'coquette2',
        'coquette3',
        'coquette4',
        'dominator8',
        'dukes',
        'euros',
        'faction',
        'fdtruckw',
        'futo',
        'futo2',
        'gauntlet',
        'gauntlet2',
        'gauntlet4',
        'granger',
        'hbox',
        'kanjo',
        'kanjosj',
        'nkbison',
        'nkcaracara2',
        'nkcruiser',
        'nkfugitive',
        'nkgranger2',
        'nktorrence',
        'nkstx',
        'nkvstr',
        'penumbra',
        'penumbra2',
        'pony',
        'pony2',
        'rt3000',
        'rumpo',
        'schafter2',
        'seminole',
        'seminole2',
        'sentinel',
        'sentinel2',
        'sentinel3',
        'stanier',
        'sultan',
        'tailgater',
        'tailgater2',
        'tenf',
        'tenf2',
        'tulip2',
        'windsor',
        'yosemite3',
        'youga',
        'warrener',
        'windsor',
        'zr350',
      },
    
    classesEnabled = false,
    -- The only classes that should be allowed to disable traction control (numerical values) https://docs.fivem.net/natives/?_0x29439776AAA00A62
    classes = {
        1, 2, 3, 4, 5, 6, 7, 9,
    },
}

-- Whether or not to apply a slight boost to vehicles engine power while mid drift (Helps lower powered vehicles stay in drift) (1.0 is the base car power)
Config.driftBoost = {
    enabled = true,
    power = 2.0
}

-- https://docs.fivem.net/docs/game-references/controls/
-- Use the input index for the "input" value
Config.keybinds = {
    toggle = {
        label = '[',
        input = 100,
        holdDuration = 1000,
    }
}
    ----------------------------------------------------------------------------------------------
--- TRACTION CONTROL VALUES
----------------------------------------------------------------------------------------------

-- Disallow certain vehicles or classes of vehicles from toggling the traction control (The traction control will always be off!)
Config.noTractionControl = {
    -- List of models that should not be able to toggle the traction control (Will always be off!)
    vehiclesEnabled = true,

    vehicles = {
      'blade',
      'elegy',
      'eudora',
      'glendale',
      'faction',
      'futo',
      'futo2',
      'gauntlet3',
      'gauntlet5',
      'picador',
      'sabregt',
      'slamvan',
      'slamvan2',
      'slamvan3',
      'slamvan4',
      'slamvan5',
      'slamvan6',
      'tampa',
      'tampa2',
      'tampax',
      'tampax2',
      'tulip',
      'tulip3',
      'vamos',
      'velox',
      'velox2',
      'winky',
      'yosemite',
      'yosemite2',
      'youga2',
      'youga3',
      'zion3',
    },
    
    -- Classes that should not be allowed to enable traction control (numerical values) https://docs.fivem.net/natives/?_0x29439776AAA00A62
    classesEnabled = false,
    classes = {
        5, 4,
    },
}
