DROP VIEW IF EXISTS vw_events;
DROP TABLE IF EXISTS attendee_options;
DROP TABLE IF EXISTS attendees;
DROP TABLE IF EXISTS event_options;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(100) NOT NULL,
  username CHAR(7) NOT NULL
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

CREATE OR REPLACE VIEW vw_events AS
  SELECT e.id AS id_event, e.url, e.title, e.location, e.description,
  array_to_string(ARRAY( SELECT to_char(event_options.date_time, 'Mon-DD-YYYY at HH24:mi')
  FROM event_options WHERE (event_options.id_event = e.id)), ', ') AS options,
  count(DISTINCT a.id) AS qty_attendees, e.id_organizer, u.email
  FROM users u
  INNER JOIN events e ON u.id = e.id_organizer
  LEFT JOIN attendees a ON e.id = a.id_event
  GROUP BY u.id, e.id;

 CREATE OR REPLACE VIEW vw_attendees AS
  SELECT a.id, a.email, u.name, a.id_event, eo.date_time,
  CASE ao.availability WHEN false THEN 'No' ELSE 'Yes'END AS available
  FROM attendees a
  LEFT JOIN attendee_options ao ON a.id = ao.id_attendee
  LEFT JOIN event_options eo ON ao.id_option = eo.id
  LEFT JOIN users u ON a.email = u.email
  ORDER BY a.id_event, eo.date_time, a.email;
