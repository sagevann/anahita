-- --------------------------------------------------------

CREATE TABLE `#__topics_topics` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `node_id` bigint(11) unsigned NOT NULL DEFAULT '0',
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `meta` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB;

INSERT INTO #__migrator_versions (`version`,`component`) VALUES(1, 'topics') ON DUPLICATE KEY UPDATE `version` = 1;