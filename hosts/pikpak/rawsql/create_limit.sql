CREATE TABLE IF NOT EXISTS `pikpak_create_link_limit`
(
    `auto_id`           bigint       NOT NULL AUTO_INCREMENT COMMENT 'Auto-increment ID',
    `keepshare_user_id` varchar(16)  NOT NULL COMMENT 'KeepShare user ID',
    `ip_limit`          int          NOT NULL DEFAULT 0 COMMENT 'Maximum number of allowed IPs',
    `unit_time`         int          NOT NULL DEFAULT 0 COMMENT 'Time period in seconds',
    `ext`               varchar(256) NOT NULL DEFAULT '' COMMENT 'Extended field for future use',
    `created_at`        datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record creation time',
    `updated_at`        datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Record update time',
    PRIMARY KEY (`auto_id`),
    UNIQUE KEY (`keepshare_user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_bin;
