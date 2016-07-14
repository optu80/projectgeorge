--
-- Table structure for table `member`
--
-- Creation: Mar 28, 2013 at 04:07 PM
-- Last update: Dec 03, 2014 at 03:39 PM
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `memberid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(25) NOT NULL,
  `displayname` varchar(50) DEFAULT NULL,
  --`recordstamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statusid` int(1) unsigned NOT NULL,
  `password` varchar(32) NOT NULL,
  `typeid` int(11) unsigned NOT NULL,
  `betvisibilityid` int(11) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  createdby int(11) unsigned NOT NULL, -- add default value like system user, script, ui
  `lastupdatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  lastupdateby int(11) unsigned NOT NULL, -- member/user id 
  PRIMARY KEY (`memberid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='users /members with passwords' AUTO_INCREMENT=19;
-- AUTO_INCREMENT=19; -- to be modified, checked against the max existing value.
