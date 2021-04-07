CREATE DATABASE IF NOT EXISTS `esdb`;

USE `esdb`;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
(
    `user_id`   bigint(20) NOT NULL AUTO_INCREMENT,
    `name`      varchar(64)         DEFAULT NULL,
    `gender_cd` enum ('M','F')      DEFAULT NULL,
    `birthday`  date                DEFAULT NULL,
    `insert_tm` datetime   NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_tm` datetime   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='user data';

DROP TABLE IF EXISTS `education_background`;
CREATE TABLE `education_background`
(
    `education_background_id` bigint(20)   NOT NULL AUTO_INCREMENT,
    `user_id`                 bigint(20)   NOT NULL,
    `school_name`             varchar(128) NOT NULL,
    `school_type`             varchar(20)  NOT NULL,
    `graduation_year`         date                  DEFAULT NULL,
    `drop_flg`                tinyint(1)   NOT NULL DEFAULT '0',
    `insert_tm`               datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_tm`               datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`education_background_id`),
    CONSTRAINT `fk_user_id`
        FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4 COMMENT ='education background';

