-- テーブル作成
-- ユーザマスタ
CREATE TABLE users
(
    user_id  int unsigned NOT NULL AUTO_INCREMENT COMMENT 'user_id',
    email    string NOT NULL COMMENT 'email',
    password string NOT NULL COMMENT 'password',
    PRIMARY KEY (user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci comment ='ユーザマスタ'
;


-- 投稿マスタ
CREATE TABLE posts
(
    post_id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'post_id',
    user_id int unsigned NOT NULL COMMENT 'user_id',
    body    string NOT NULL COMMENT 'body',
    date    datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'date',
    PRIMARY KEY (post_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci comment ='投稿マスタ'
;