-- テーブル作成
-- ユーザトランザクション
CREATE TABLE users
(
    user_id  int unsigned NOT NULL AUTO_INCREMENT COMMENT 'user_id',
    email    varchar(254) NOT NULL COMMENT 'ログイン用email',
    password varchar(100) NOT NULL COMMENT 'ログイン用password',
    PRIMARY KEY (user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci comment ='ユーザトランザクション'
;

-- 投稿トランザクション
CREATE TABLE posts
(
    post_id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'post_id',
    user_id int unsigned NOT NULL COMMENT '投稿者user_id',
    body    text NOT NULL COMMENT '本文',
    date    datetime DEFAULT CURRENT_TIMESTAMP COMMENT '投稿日付',
    PRIMARY KEY (post_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci comment ='投稿トランザクション'
;

-- イイネトランザクション
CREATE TABLE likes
(
    post_id int unsigned NOT NULL COMMENT 'イイネ先post_id',
    user_id int unsigned NOT NULL COMMENT 'イイネをしたユーザのuser_id',
    date    datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'イイネした日付時刻',
    PRIMARY KEY (post_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci comment ='イイネトランザクション'
;
