Citizen.CreateThread(function()
    MySQL.Sync.execute([[
        CREATE TABLE IF NOT EXISTS `tuning_upgrades` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `zone` varchar(32) NOT NULL,
            `name` varchar(64) NOT NULL,
            `cost` int(11) NOT NULL,
            `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
            PRIMARY KEY (`id`),
            UNIQUE KEY `zone_name` (`zone`,`name`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
    ]])

    MySQL.Sync.execute([[
        CREATE TABLE IF NOT EXISTS `vehicle_tuning` (
            `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
            `plate` varchar(32) NOT NULL,
            `mods` text NOT NULL,
            `created_at` timestamp NOT NULL
        );
    ]])

    if #MySQL.Sync.fetchAll('SHOW COLUMNS FROM `vehicle_tuning` LIKE "nitrous"') == 0 then
        MySQL.Sync.execute([[
            ALTER TABLE `vehicle_tuning`
                ADD `nitrous` INT(3) NULL DEFAULT 0,
                ADD `hasNitrous` INT(1) NULL DEFAULT '0';
        ]])
    end
end)