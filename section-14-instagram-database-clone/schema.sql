DROP TABLE IF EXISTS photo_tags, tags, follows, likes, comments, photos, users;

-- users table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);
-- seed data for users
INSERT INTO users (username) VALUES ('BlueTheCat'), ('CharlieBrown'), ('ColtSteele');

-- photos table
CREATE TABLE photos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  image_url VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

-- seed data for photos
INSERT INTO photos (image_url, user_id)
VALUES
('/asldasldkl', 1),
('/lklksdfsdf', 2),
('/xcvxcvaaaa', 3);

-- SELECT users.id, username, image_url
-- FROM users
-- JOIN photos
--   ON users.id = photos.user_id;

-- comments table
CREATE TABLE comments (
  id INT AUTO_INCREMENT PRIMARY KEY,
  comment_text VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (photo_id) REFERENCES photos(id)
);

-- seed data for comments
INSERT INTO comments (comment_text, user_id, photo_id)
VALUES
('Meow!', 1, 2),
('Amazing shot', 3, 2),
('I <3 this', 2, 1);

-- likes table
CREATE TABLE likes (
  user_id INT NOT NULL,
  photo_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (photo_id) REFERENCES photos(id),
  PRIMARY KEY (user_id, photo_id)
);

-- seed data for likes
INSERT INTO likes (user_id, photo_id)
VALUES
(1, 1), (2, 1), (1, 2), (1, 3), (3, 3);

-- following/followers schema
CREATE TABLE follows (
  follower_id INT NOT NULL,
  followee_id INT NOT NULL,
  created_at TIMESTAMP DEFAULT NOW(),
  FOREIGN KEY (follower_id) REFERENCES users(id),
  FOREIGN KEY (followee_id) REFERENCES users(id),
  PRIMARY KEY (follower_id, followee_id)
);

-- seed data for follows
INSERT INTO follows (follower_id, followee_id)
VALUES
(1, 2), (1, 3), (3, 1), (2, 3);

-- hashtags table
CREATE TABLE tags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO tags (tag_name)
VALUES
('adorable'), ('cute'), ('sunrise');

CREATE TABLE photo_tags (
  photo_id INT NOT NULL,
  tag_id INT NOT NULL,
  FOREIGN KEY (photo_id) REFERENCES photos(id),
  FOREIGN KEY (tag_id) REFERENCES tags(id),
  PRIMARY KEY (photo_id, tag_id)
);

INSERT INTO photo_tags (photo_id, tag_id)
VALUES
(1, 1), (1, 2), (2, 3), (3, 2);





