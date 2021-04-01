CREATE TABLE `users` (
  `id`			bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name`		varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名前',
  `email`		varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'メールアドレス',
  `password`	varchar(255)  COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'パスワード',
  `notes`		varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '備考',
  `created_at`	timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at`	timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='ユーザ情報';

