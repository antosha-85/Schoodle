DROP DATABASE IF EXISTS schoodle;
DROP TABLE IF EXISTS attendee_options;
DROP TABLE IF EXISTS attendees;
DROP TABLE IF EXISTS event_options;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS users;

CREATE DATABASE schoodle;

\c schoodle;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(100) NOT NULL,
  username CHAR(7) NOT NULL,
  password VARCHAR(30) NULL
);

CREATE TABLE events (
  id SERIAL PRIMARY KEY NOT NULL,
  id_organizer INTEGER REFERENCES users(id) ON DELETE CASCADE,
  url CHAR(10) NOT NULL,
  title VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  description TEXT NOT NULL
);

CREATE TABLE event_options (
  id SERIAL PRIMARY KEY NOT NULL,
  id_event INTEGER REFERENCES events(id) ON DELETE CASCADE,
  date_time TIMESTAMP NOT NULL
);

CREATE TABLE attendees (
  id SERIAL PRIMARY KEY NOT NULL,
  id_event INTEGER REFERENCES events(id) NOT NULL,
  email varchar(100) NOT NULL
);

CREATE TABLE attendee_options (
  id_attendee INTEGER REFERENCES attendees(id) ON DELETE CASCADE,
  id_option INTEGER REFERENCES event_options(id) ON DELETE CASCADE,
  availability BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (id_attendee, id_option)
);
