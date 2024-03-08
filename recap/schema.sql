DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS article;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE article (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  url_path TEXT NOT NULL,
  title VARCHAR(255),
  summary TEXT,
  author VARCHAR(255),
  category VARCHAR(255),
  key_topics VARCHAR,
  sub_category VARCHAR,
  FOREIGN KEY (user_id) REFERENCES user (id)
);