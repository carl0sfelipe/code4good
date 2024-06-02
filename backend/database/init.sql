CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE
);

CREATE TABLE ideas (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  description TEXT,
  user_id INT REFERENCES users(id)
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  idea_id INT REFERENCES ideas(id)
);

CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  description TEXT,
  project_id INT REFERENCES projects(id)
);
