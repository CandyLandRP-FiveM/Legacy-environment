OX INSTALL QUIDE

1. Download all dependencies!
    Dependencies:
    ox_lib | https://github.com/overextended/ox_lib
    es_extended / qb-core
    qtarget / qb-target / ox_target
    lockpick | https://github.com/baguscodestudio/lockpick
	howdy-hackminigame | https://github.com/HiHowdy/howdy-hackminigame
	mka-lasers | https://github.com/mkafrin/mka-lasers
	xsound (with emulator for interact sound) or interactsound
    bob74_ipl | https://github.com/Bob74/bob74_ipl

2. UPLOAD THIS INTO YOUR DATABASE

CREATE TABLE IF NOT EXISTS `owned_warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alarm` varchar(255) DEFAULT NULL,
  `laser` varchar(255) DEFAULT NULL,
  `laundry` varchar(255) DEFAULT NULL,
  `printer` varchar(255) DEFAULT NULL,
  `washing` varchar(255) DEFAULT NULL,
  `wash_process` varchar(255) DEFAULT NULL,
  `drying_process` varchar(255) DEFAULT NULL,
  `webhook` varchar(255) DEFAULT NULL,
  `access` longtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


3. Add Images to your inventory
	ox_inventory > web > build > images
	Paste images from folder images to ox_inventory > web > build > img

4. Add Items to your inventory
	ox_inventory > data> items.lua
['wet_money'] = {
        label = 'Wet money',
        weight = 0.01,
        stack = true,
        close = true,
    },
    ['unmarked_money'] = {
        label = 'Unmarked dirty money',
        weight = 0.01,
        stack = true,
        close = true,
    },
    ['dry_money'] = {
        label = 'Dry money',
        weight = 0.01,
        stack = true,
        close = true,
    },
    ['warehouse_locator'] = {
        label = 'Warehouse locator',
        weight = 1,
        stack = true,
        close = true,
    },
	['hack_laptop'] = {
        label = 'Hack Laptop',
        description = "",
        weight = 20,
        stack = true,
	},
	['lockpick'] = {
        label = 'Lockpick',
        description = "",
        weight = 165,
        stack = true,
	},

5. add ensure drc_moneywash into your server.cfg (make sure to start it after ox_lib and your target system!)

6. Enjoy your new moneywash script from DRC SCRIPTS!