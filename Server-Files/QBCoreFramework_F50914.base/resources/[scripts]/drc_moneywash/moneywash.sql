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