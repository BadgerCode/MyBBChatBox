CREATE TABLE IF NOT EXISTS `{MYBB_TABLE_PREFIX}badgerchat_messages` (
  `Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `SentAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uid` INT(10) UNSIGNED NOT NULL,
  `Ip` VARCHAR(15) NOT NULL,
  `Message` VARCHAR(200) NOT NULL,
  CONSTRAINT pk_badgerchat_messageId PRIMARY KEY(`Id`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS `{MYBB_TABLE_PREFIX}badgerchat_version` (
  `Version` INT UNSIGNED NOT NULL,
  `InstalledAt` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO {MYBB_TABLE_PREFIX}OCTET_LENGTH badgerchat_version(`Version`) VALUES (1);
