-- テーブル作成
-- ユーザトランザクション
CREATE TABLE users
(
    user_id    int unsigned NOT NULL AUTO_INCREMENT COMMENT 'user_id',
    email      varchar(254) NOT NULL COMMENT 'ログイン用email',
    password   text         NOT NULL COMMENT 'ログイン用password',
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '登録日時',
    PRIMARY KEY (user_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
    COMMENT = 'ユーザトランザクション'
;

-- 投稿トランザクション
CREATE TABLE posts
(
    post_id int unsigned NOT NULL AUTO_INCREMENT COMMENT 'post_id',
    user_id int unsigned NOT NULL COMMENT '投稿者user_id',
    body    text         NOT NULL COMMENT '本文',
    date    datetime DEFAULT CURRENT_TIMESTAMP COMMENT '投稿日付',
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    PRIMARY KEY (post_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
    COMMENT = '投稿トランザクション'
;

-- イイネトランザクション
CREATE TABLE likes
(
    post_id int unsigned NOT NULL COMMENT 'イイネ先post_id',
    user_id int unsigned NOT NULL COMMENT 'イイネをしたユーザのuser_id',
    date    datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'イイネした日付時刻',
    FOREIGN KEY (post_id) REFERENCES posts (post_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    PRIMARY KEY (post_id)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
    COMMENT = 'イイネトランザクション'
;
