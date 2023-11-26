# KQ_TOWING2 INSTALLATION GUIDE

This guide will provide step-by-step instructions on how to install and set up the KQ_TOWING2 script for FiveM.

## Step 1:
After downloading the script, unzip the folder and place it in the `resources` directory on your FiveM server.

## Step 2:
Add the script to your `server.cfg` file. Make sure that it's added **after** the framework of choice if using any.

## Step 3:
Open the `config.lua` file in the script folder and make sure that the correct framework is enabled. (If using ESX or QBCore)

## Framework specific setup

### ESX
- Import the SQL file located inside the `/esx` folder to your database to add the items or change the item names in the config to match existing items.

### QBCore
- Add the items located in the `/qb` folder to your qb-core shared.lua file `qb-core/shared/items.lua` or `qb-core/shared.lua`  or change the item names in the config to match existing items.

### Extra
- If using an anti-cheat make sure to whitelist a prop: `prop_roadpole_01a`. This prop is required for the rope to work properly

## Done
Enjoy the script


- https://kuzquality.com/
- https://discord.gg/fZsyam7Rvz
- https://www.youtube.com/@KuzQuality