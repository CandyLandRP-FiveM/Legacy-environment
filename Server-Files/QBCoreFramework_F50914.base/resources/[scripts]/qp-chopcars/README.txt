Do the following steps if you want remove the choped players cars until the next server restart.

1- You should run the following sql in your player_vehicles table

	ALTER TABLE `player_vehicles`
	ADD COLUMN `chop` BIT(1) NOT NULL DEFAULT 0

2- Now you should filter the queries in your garage script by ( chop = 0 ), because if chop is 1 means that the vehicle was choped


NOTE:
If you use ox-target, you need to add the following code
path: ox_target\client\compat\qb-target

exportHandler('RemoveTargetBone', function(bones, labels)
    if type(labels) ~= 'table' then labels = { labels } end

    exports.ox_target:removeGlobalVehicle(labels)
end)