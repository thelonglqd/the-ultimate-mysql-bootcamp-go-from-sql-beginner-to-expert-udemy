USE ig_clone;

DROP TABLE IF EXISTS unfollows;
DROP TRIGGER IF EXISTS logging_unfollow;

CREATE TABLE unfollows (
  follower_id INT NOT NULL,
  followee_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (follower_id) REFERENCES users(id),
  FOREIGN KEY (followee_id) REFERENCES users(id),
  PRIMARY KEY (follower_id, followee_id)
);

DELIMITER $$

CREATE TRIGGER logging_unfollow
  AFTER DELETE ON follows FOR EACH ROW
  BEGIN
      INSERT INTO unfollows
      SET
        follower_id = OLD.follower_id,
        followee_id = OLD.followee_id;
  END;
$$

DELIMITER ;