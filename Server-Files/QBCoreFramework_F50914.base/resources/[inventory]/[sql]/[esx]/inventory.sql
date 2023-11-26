CREATE TABLE IF NOT EXISTS `inventory_glovebox` (
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `plate` varchar(255) DEFAULT NULL, 
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL, 
  PRIMARY KEY (`plate`), 
  KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = latin1;

CREATE TABLE IF NOT EXISTS `inventory_stash` (
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `stash` varchar(255) DEFAULT NULL, 
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL, 
  PRIMARY KEY (`stash`), 
  KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = latin1;

CREATE TABLE IF NOT EXISTS `inventory_trunk` (
  `id` int(11) NOT NULL AUTO_INCREMENT, 
  `plate` varchar(255) DEFAULT NULL, 
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL, 
  PRIMARY KEY (`plate`), 
  KEY `id` (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = latin1;

CREATE TABLE IF NOT EXISTS `inventory_metadata` (
  `id` INT(11) NOT NULL AUTO_INCREMENT, 
  `identifier` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci', 
  `data` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci', 
  PRIMARY KEY (`id`) USING BTREE
) COLLATE = 'utf8mb4_unicode_ci' ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `inventory_clothes` (
  `id` INT(11) NOT NULL AUTO_INCREMENT, 
  `identifier` VARCHAR(50) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci', 
  `items` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci', 
  PRIMARY KEY (`identifier`) USING BTREE, 
  INDEX `id` (`id`) USING BTREE
) COLLATE = 'utf8mb4_general_ci' ENGINE = InnoDB AUTO_INCREMENT = 6;

ALTER TABLE `users` ADD IF NOT EXISTS `metadata` mediumtext DEFAULT NULL;