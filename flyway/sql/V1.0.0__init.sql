-- テーブル作成
-- ユーザマスタ
CREATE TABLE users
(
    user_id  int unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
    email    string NOT NULL COMMENT 'email',
    password string NOT NULL COMMENT 'password',
    PRIMARY KEY (user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci comment ='ユーザマスタ'
;