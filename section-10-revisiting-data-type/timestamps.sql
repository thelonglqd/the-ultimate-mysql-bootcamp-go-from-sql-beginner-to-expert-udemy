DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  content VARCHAR(100),
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments (content) VALUES ('lol what a funny article');
INSERT INTO comments (content) VALUES ('I found this offensive');

SELECT * FROM comments;

DROP TABLE IF EXISTS comments2;

CREATE TABLE comments2 (
  content VARCHAR(100),
  changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2 (content) VALUES ('lol lol lol');
INSERT INTO comments2 (content) VALUES ('sdfdsjfsdjkfhsjkdhfkj');
INSERT INTO comments2 (content) VALUES ('I like cats and dogs');

SELECT * FROM comments2;
