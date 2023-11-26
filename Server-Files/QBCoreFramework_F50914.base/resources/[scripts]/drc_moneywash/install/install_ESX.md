ESX INSTALL QUIDE

If u use ox_inventory please open install_OX.md and close this file!
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

ITEMS 
3. Add Item to your server (Use this insert in your database or use esx_items.sql!)

    INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
    ('hack_laptop', 'Hacking Laptop', 1, 0, 1),
    ('wet_money', 'Wet money', 1, 0, 1),
    ('unmarked_money', 'Unmarked dirty money', 1, 0, 1),
    ('dry_money', 'Dry money', 1, 0, 1),
    ('warehouse_locator', 'Warehouse locator', 1, 0, 1),
    ('lockpick', 'Lockpick', 1, 0, 1);


4. Add Images to your inventory
    if your are using esx_inventory then 
    esx_inventoryhud > html > images
    Paste images from folder images to esx_inventoryhud > html > images

5. add ensure drc_moneywash into your server.cfg (make sure to start it after ox_lib and your target system!)

6. Enjoy your new moneywash script from DRC SCRIPTS!

