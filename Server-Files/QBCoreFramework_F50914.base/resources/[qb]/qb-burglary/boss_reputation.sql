--
-- Table structure for table `boss_reputation`
-- Please do not modify
--

CREATE TABLE `boss_reputation` (
  `id` int(11) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `rep` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `boss_reputation` (`id`, `cid`, `rep`) VALUES
(1, 'MKNZ945876', 99999);

ALTER TABLE `boss_reputation`
  ADD PRIMARY KEY (`id`);
COMMIT;

ALTER TABLE `boss_reputation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
COMMIT;