DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS replies;

PRAGMA foreign_keys = ON;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  fname VARCHAR(255),
  lname VARCHAR(255)
);

CREATE TABLE questions (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  title VARCHAR,
  body TEXT,
  
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
  user_id INTEGER,
  question_id INTEGER,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE replies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  subject_question INTEGER,
  top_level BOOLEAN,
  parent_reply INTEGER,
  author INTEGER,
  body TEXT,

  FOREIGN KEY (subject_question) REFERENCES questions(id),
  FOREIGN KEY (parent_reply) REFERENCES replies(id),
  FOREIGN KEY (author) REFERENCES users(id)
);


CREATE TABLE question_likes (
  user_id INTEGER,
  question_id INTEGER,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (question_id) REFERENCES questions(id)
);

INSERT INTO
  users(fname, lname)
VALUES ("Kyle", "Much"), ("Janette", "Tinoco"), ("Jim", "Krentist");

INSERT INTO
  questions(id, user_id, title, body)
  VALUES (10, 1, "Powering On", "How do I turn on my computer?"), (11, 2, "Spilled Water", "How do I get water out of my keyboard...");

INSERT INTO 
  replies(id, subject_question, top_level, parent_reply, author, body)
    VALUES (101, 10, true, )



