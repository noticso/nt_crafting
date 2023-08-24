
USE ``; --TABLE NAME

CREATE TABLE IF NOT EXISTS `level` (
  `identifier` varchar(60) NOT NULL,
  `levels` int(2) unsigned NOT NULL DEFAULT 1,
  `points` int(15) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
