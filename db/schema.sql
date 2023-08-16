DROP DATABASE IF EXISTS messages_dev;
CREATE DATABASE messages_dev;

\c messages_dev

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS profiles;
DROP TABLE IF EXISTS messages;
DROP TABLE IF EXISTS msg_read_at;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  f_name TEXT,
  l_name TEXT,
  email VARCHAR(254),
  password_hash TEXT,
  create_date timestamp
);

CREATE TABLE profiles(
  profile_id SERIAL PRIMARY KEY,
  user_id INTEGER,
  banner VARCHAR,
  bio TEXT,
  related INTEGER[]
);

CREATE TABLE messages(
  msg_id SERIAL PRIMARY KEY,
  topic TEXT,
  msg_body TEXT,
  sent_at timestamp,
  sender_id INTEGER,
  recipient_id INTEGER[],
  reply_to INTEGER
);
CREATE TABLE msg_read_at(
  msg_read_id SERIAL PRIMARY KEY,
  msg_id INTEGER,
  recipient_id INTEGER,
  read_at timestamp
);

