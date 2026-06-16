CREATE TABLE IF NOT EXISTS `keepshare_forbidden_link`
(
    `channel_id`         varchar(16) NOT NULL,
    `original_link_hash` char(40)    NOT NULL,
    `forbidden`          tinyint(1)  NOT NULL DEFAULT 0,
    `original_link`      text        NOT NULL,
    `created_at`         datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`         datetime    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY `channel_id.original_link_hash` (`channel_id`, `original_link_hash`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_bin;
