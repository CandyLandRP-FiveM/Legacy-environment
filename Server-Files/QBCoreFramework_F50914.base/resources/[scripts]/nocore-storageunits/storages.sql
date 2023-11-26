CREATE TABLE IF NOT EXISTS `storages` (
  `storage` int(11) NOT NULL AUTO_INCREMENT,
  `cid` text DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tier` int(11) DEFAULT 1,
  `rented_date` varchar(255) DEFAULT '0',
  `expiring_date` varchar(255) DEFAULT '0',
  `expired` varchar(50) DEFAULT '0',
  `failed_payments` int(11) NOT NULL DEFAULT 0,
  `next_payment_atempt` varchar(50) DEFAULT '0',
  PRIMARY KEY (`storage`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;