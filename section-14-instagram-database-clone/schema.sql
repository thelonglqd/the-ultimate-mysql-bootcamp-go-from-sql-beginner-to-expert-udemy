DROP TABLE IF EXISTS photos, users;

-- users table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);
-- seed data for users
INSERT INTO users (username) VALUES ('BlueTheCat'), ('CharlieBrown'), ('ColtSteele');

-- photos
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