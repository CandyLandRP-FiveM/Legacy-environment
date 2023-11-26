# jim-djbooth
Play music at configured coords!

My edit that uses qb-menu icons and allows qb-target to be used for every location

Targets are generated as "Circle Zones" from the coords set for each location.

Has Dynamic menu that changes depending on state of music.



## Dependencies
* [xsound]
* [PolyZone]
* [qb-menu]
* [qb-target]
* [ox_lib Context] (optional)


# Prequisites
## [xSound]:
    - Download the zip and extract the folder
    - If needed, rename the folder to from xsound-master to xsound
    - Place the folder in your server folder inside [standalone]

# Installation
    - Download the zip and extract the folder
    - If needed, rename the folder to from "jim-djbooth-master" to "jim-djbooth"
    - Place in a folder called [jim-extras]
    - Make sure it starts AFTER xsound and BEFORE any scripts that make use of it

Example of my load order:
```CSS
# QBCore & Extra stuff
ensure qb-core
ensure [qb]
ensure [standalone]
ensure [voice]
ensure [defaultmaps]
ensure [vehicles]

# Extra Jim Stuff
ensure [jimextras]
ensure [jim]
```

## Adding new locations
- You can manually add locations in the config.lua
- For example:
```lua
{ -- Sisyphus Theater
    job = "public",                             -- "public" makes it so anyone can add music.
    enableBooth = true,                         -- option to disable rather than deleting code
    DefaultVolume = 0.15,                       -- 0.01 is lowest, 1.0 is max
    radius = 200,                               -- The radius of the sound from the booth
    coords = vec3(206.9, 1181.04, 226.51),      -- Where the booth target is located
    soundLoc = vec3(212.32, 1155.87, 227.01),   -- Add sound origin location (optional)
},
```
- You can also add them from other scripts with the server sided event:
```lua
TriggerEvent("jim-djbooth:server:AddLocation",
    { -- Sisyphus Theater
        job = "public",
        enableBooth = true,
        DefaultVolume = 0.15,
        radius = 200,
        coords = vec3(206.9, 1181.04, 226.51),
        soundLoc = vec3(212.32, 1155.87, 227.01),
    },
)
```
- This will make the extra dj-booth's from other scripts as plug and play as possible


