-------------------------------
-- DOCUMENTATION : https://docs.kaddarem.com/
--------------------------------

-------------------------------------------
-- DON'T EDIT THIS FILE
-- TO OVERWRITE CONFIG VALUE, USE overwriteConfig.lua file instead
-------------------------------------------

Config = {}

-- Display helpfull information to setup a new truck
Config.Debug = false
-- Max length of the winch
Config.MaxLengthRope = 19.0
-- Can push the car with rope ? (unrealistic but useful to get off the vehicle of the bed)
Config.pushWithRope = true
-- Duration to synchronize the rope between players 
Config.ResyncRopeFrenquency = 10000 --ms
-- Keys
Config.DefaultKeys = {
  tow = "j",
  winch = "h",
  unwind = "g"
}
-- Model name of the hook object
Config.HookModel = 'prop_rope_hook_01'

-- List of truck available for this script (you can add more)
Config.ValidModel = {
  -- Copy this array to add vehicle.
  [`flatbed3`] =  {
    -- Set bedUp & bedDown to 0 if you don't need to move the bed to use the winch
    bedUp = 3.7, -- Distance between bodyshell bone and attachVehBone when the bed is up
    bedDown = 8.1, -- Distance between bodyshell bone and attachVehBone when the bed is down
    ropeBone = "misc_b", -- Bone where the rope is attached
    ropeOffset = vector3(0,0,0.3), -- offset from ropeBone to adjust the position of the rope
    ropeDistancetake =  1.5, -- Max distance to take the winch
    attachVehBone = "misc_a", -- Bone where the vehicle is attached
    attachOffset = vector4(0.0,0.0,0.0,0.0) -- Offset of the attach positon (w value is the tilt)
  },
  [`cortowmfd4`] =  {
    bedUp = 1.901,
    bedDown = 6.0,
    ropeBone = "attach_male",
    ropeOffset = vector3(0,0,0),
    ropeDistancetake =  1.5,
    attachVehBone = "misc_z",
    attachOffset = vector4(0.0,0.0,0.0,0.0)
  },
  [`lgc19flatbed`] =  {
    bedUp = 3.235,
    bedDown = 7.7,
    ropeBone = "misc_b",
    ropeOffset = vector3(0,0,0),
    ropeDistancetake =  1.5,
    attachVehBone = "misc_a",
    attachOffset = vector4(0.0,0.0,0.0,0.0)
  },
  [`20ramrbc`] =  {
    bedUp = 4.449,
    bedDown = 6.87,
    ropeBone = "attach_male",
    ropeOffset = vector3(0,0,0),
    ropeDistancetake =  1.5,
    attachVehBone = "misc_z",
    attachOffset = vector4(0.0,0.0,0.0,0.0)
  },
   [`slamtruck`] =  {
    bedUp = 0,
    bedDown = 0,
    ropeBone = "bodyshell",
    ropeOffset = vector3(0.0,0.7,0.5),
    ropeDistancetake = 1.5,
    attachVehBone = "bodyshell",
    attachOffset = vector4(0,0.0,0.0,10.0)
  },
   [`c3navistar`] =  {
    bedUp = 4.603, -- Distance between bodyshell bone and attachVehBone when the bed is up
    bedDown = 9.8, -- Distance between bodyshell bone and attachVehBone when the bed is down
    ropeBone = "misc_a", -- Bone where the rope is attached
    ropeOffset = vector3(0.0,0.0,-0.2), -- offset from ropeBone to adjust the position of the rope
    ropeDistancetake =  1.5, -- Max distance to take the winch
    attachVehBone = "misc_b", -- Bone where the vehicle is attached
    attachOffset = vector4(0.0,0.0,0.0,0.0) -- Offset of the attach positon (w value is the tilt)
  },
  [`BFGWBerg`] =  {
    -- Set bedUp & bedDown to 0 if you don't need to move the bed to use the winch
    bedUp = 2.31, -- Distance between bodyshell bone and attachVehBone when the bed is up
    bedDown = 6.45, -- Distance between bodyshell bone and attachVehBone when the bed is down
    ropeBone = "misc_b", -- Bone where the rope is attached
    ropeOffset = vector3(-0.20,0.00,0.0), -- offset from ropeBone to adjust the position of the rope
    ropeDistancetake =  1.3, -- Max distance to take the winch
    attachVehBone = "misc_a", -- Bone where the vehicle is attached
    attachOffset = vector3(0,0,0) -- Offset of the attach positon (w value is the tilt)
 },
}