ESX INSTALL QUIDE

If u use ox_inventory please open install_OX.md and close this file!
1. Download all dependencies!
    Dependencies:
    ox_lib | https://github.com/overextended/ox_lib
    es_extended / qb-core
    qtarget / qb-target

ITEMS 

2. Add Item to your server
    Use this insert in your database or use esx_items.sql!

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('blueprint_carbine', 'Carbine Rifle Blueprint', 1, 0, 1),
('scrap', 'Scrap Metal', 1, 0, 1),
('raw_steak', 'Raw Steak', 1, 0, 1),
('steak', 'Steak', 1, 0, 1);

3. Add Images to your inventory
    if your are using esx_inventory then 
    esx_inventoryhud > html > images
    Paste images from folder images to esx_inventoryhud > html > images

4. add ensure drc_crafting into your server.cfg (make sure to start it after ox_lib and your target system!)

5. Enjoy your new crafting script from DRC SCRIPTS!
