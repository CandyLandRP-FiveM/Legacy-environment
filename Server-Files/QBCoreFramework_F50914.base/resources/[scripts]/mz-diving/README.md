## MZ-DIVING - an alternative contract-based diving resource for qb-core (with or without mz-skills integration)

By Mr_Zain#4139

* PLEASE NOTE: All credit to KonarPlus and qb-diving for a lot of the scuba suit functionality

- Highly customistable resource allowing player to obtain a dive contract to salvage up to 6 locations per salvage site;
- Optimised for qb-target, running at 0.00 resmon;
- New skill "Diving" added to mz-skills to facilitate Diving XP - the higher the XP, the better the chance for multiple salvage per prop;
- Configured to function with or without mz-skills;
- Configured to function with or without skillchecks (ps-ui skillcheck configured);
- Comes default configured with 24 pre-set spawn points for missions which do not interfere with one another - More spots can be added easily via config;
- If less than 6 props are selected (customisable via config) then the props which will spawn are randomised for each location and overlap is very unlikely; 
- Configured to operate with qb-core standard notifications and oKoKNotify.

## DEPENDENCIES

NOTE: You should have each of the dependencies other than mz-skills as part of a conventional qb-core install.

**[mz-skills](https://github.com/MrZainRP/mz-skills)** - to track skill progress. All credit to Kings#4220 for the original qb-skillz now **[B1-skillz](https://github.com/Burn-One-Studios/B1-skillz)**

**[progressbar](https://github.com/qbcore-framework/progressbar)**

**[mhacking](https://github.com/qbcore-framework/mhacking)**

**[qb-target](https://github.com/qbcore-framework/qb-target)**

**[ps-ui](https://github.com/Project-Sloth/ps-ui)**

OPTIONAL: (Configured to work with okokNotify as well as base qb-core notifications).

## Installation Instruction

## A. MZ-SKILLS

1. Ensure that mz-skills forms part of your running scripts. If you have downloaded mz-skills before and are running it, please make sure you download the latest version of it. 

2. Run the "skills.sql" sql file and open the database. (This will add a data table to the existing "players" database which will hold the skill value for "Scraping" as well as other jobs)

## B. QB-CORE/SHARED/ITEMS.LUA

3. Add the following items to qb-core/shared/items.lua 

PLEASE NOTE: This resource is designed to replace qb-diving (although it does not have to and will not interfere with qb-diving). If you are running qb-diving or recent versions of qb-core you will not need to add the item "diving_gear" - but I would recommend doing so as I have altered certain values to better function with mz-diving

```lua
	--mz-diving
	["diving_salvage"]				 = {['name'] = 'diving_salvage', 				['label'] = 'Diving Salvage', 			['weight'] = 400, 		['type'] = 'item', 		['image'] = 'divesalvage.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A rusted looking metal cog, might be useful for something?'},
	["driftwood"]					 = {['name'] = 'driftwood', 					['label'] = 'Driftwood', 				['weight'] = 300, 		['type'] = 'item', 		['image'] = 'driftwood.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Some soft but kind of rare looking driftwood?'},
	["shipwreck_crockery"]			 = {['name'] = 'shipwreck_crockery', 			['label'] = 'Crockery', 				['weight'] = 350, 		['type'] = 'item', 		['image'] = 'crockery.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'This tea set looks like it came straight off the Titanic.'},
	["diving_antiques"]				 = {['name'] = 'diving_antiques', 				['label'] = 'Antique Wares', 			['weight'] = 450, 		['type'] = 'item', 		['image'] = 'antiques.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Is this thing gold or gold plated? I wonder if someone could get it working so I can finally tell the time...'},
	["abandoned_valuables"]			 = {['name'] = 'abandoned_valuables', 			['label'] = 'Shipwreck Valuables', 		['weight'] = 250, 		['type'] = 'item', 		['image'] = 'shipwreckvaluables.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Woah, this stuff looks like it is marked 18K...'},
```

If you wish to replace "diving_gear", please do so with the following

```lua
	['diving_gear'] 			     = {['name'] = 'diving_gear', 					['label'] = 'Diving Gear', 				['weight'] = 3000, 		['type'] = 'item', 		['image'] = 'diving_gear.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'An oxygen tank and a rebreather'},
```

## C. IMAGES

4. Add the images which appear in the "images" folder to your inventory images folder. 

If using lj-inventory, add the images to: lj-inventory/html/images/ - if you are using qb-inventory, add the images to qb-inventory/html/images/

## D. FINALISATION

5. If you attend to all of the above steps you will need to restart the server in order for the new added items to be recognised by qb-core. 

Please restart your server ensuring that mz-diving is ensured/starts after qb-core starts (ideally it should just form part of your [qb] folder).

## E. SUPPORT

6. When seeking support, please address the following questions and ensure you are seeking support in the correct sub-forum if possible. This will allow myself and others to address your concerns quicker than would otherwise be the case.

- A. What is the issue? What were you doing to cause the issue? 

- B. Have you checked for console errors? If yes, please provide them. If not, please check both F8 and server sided consoles for error messages. 

- C. Have you restarted the server to see if console errors arise upon loading the resource? Please do this and provide screenshots of your console.

- D. What have you done to try and fix the issue? 

- E. Do you have any evidence to show what the issue is? (Screengrabs or short clips are very useful in working out how the error is caused in the first place - which makes finding a fix a lot easier).

-----------------------

Please note, failure to provide the detail set out above will simply mean that time needs to be spent working out what the issue is in the first place rather than responding to it.


