INSERT INTO users (id, username, name, email) VALUES(1, 'uoZgwI3', 'John Dafoe', 'jdafoe@fake.com');
INSERT INTO users (id, username, name, email) VALUES(2, 'u0rFzhB', 'James Orlof', 'jorlof@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(3, 'u6bpA7G', 'Mark Smith', 'msmith@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(4, 'ublCOkL', 'Madison Gates', 'mgates@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(5, 'uC68Po6', 'Jacob Gates', 'jgates@undefined');
INSERT INTO users (id, username, name, email) VALUES(6, 'udfFjjE', 'Pamela Brown', 'pbrown@undefined');
INSERT INTO users (id, username, name, email) VALUES(7, 'uh6biyt', 'Brian Park', 'bpark@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(8, 'u0dSvrt', 'Mark Dafoe', 'mdafoe@aol.com');
INSERT INTO users (id, username, name, email) VALUES(9, 'uU3xMXL', 'Jacob Lord', 'jlord@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(10, 'ukUyxkT', 'Rita Stevenson', 'rstevenson@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(11, 'u4MvsLk', 'Art Borham', 'aborham@aol.com');
INSERT INTO users (id, username, name, email) VALUES(12, 'uvTt06K', 'William Gates', 'wgates@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(13, 'u0JyQKg', 'Steve Orlof', 'sorlof@aol.com');
INSERT INTO users (id, username, name, email) VALUES(14, 'u0Gdlcx', 'Jacob Orlof', 'jorlof@aol.com');
INSERT INTO users (id, username, name, email) VALUES(15, 'ubkTBeQ', 'Lucy Liu', 'lliu@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(16, 'ud9a19q', 'Madison Lee', 'mlee@undefined');
INSERT INTO users (id, username, name, email) VALUES(17, 'ubRU1tV', 'Dianne Lee', 'dlee@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(18, 'u6SCqCS', 'Anna Kubitz', 'akubitz@fake.com');
INSERT INTO users (id, username, name, email) VALUES(19, 'utTyIYU', 'Justin Jobs', 'jjobs@undefined');
INSERT INTO users (id, username, name, email) VALUES(20, 'ucQmooA', 'William Goldberg', 'wgoldberg@fake.com');
INSERT INTO users (id, username, name, email) VALUES(21, 'upKhWEs', 'Justin Macintosh', 'jmacintosh@fake.com');
INSERT INTO users (id, username, name, email) VALUES(22, 'uLurUp1', 'Madison Smith', 'msmith@aol.com');
INSERT INTO users (id, username, name, email) VALUES(23, 'uyMgDhm', 'Jacob Murray', 'jmurray@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(24, 'ucNsglK', 'Carol Clark', 'cclark@undefined');
INSERT INTO users (id, username, name, email) VALUES(25, 'ul40eiS', 'Justin Lee', 'jlee@aol.com');
INSERT INTO users (id, username, name, email) VALUES(26, 'uumCj3w', 'Helen Santos', 'hsantos@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(27, 'utqYhc8', 'Pamela Campos', 'pcampos@aol.com');
INSERT INTO users (id, username, name, email) VALUES(28, 'u2JWJee', 'Steve Park', 'spark@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(29, 'uNLxwXa', 'Mark Brown', 'mbrown@fake.com');
INSERT INTO users (id, username, name, email) VALUES(30, 'urpSa4v', 'Madison Santos', 'msantos@undefined');
ALTER SEQUENCE users_id_seq RESTART WITH 31; 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (1, 1, 'eQK3cIzA7', 'Meetup - week 1 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (1, 1, '2020-03-09 17:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (2, 1, '2020-03-09 10:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (1, 1, 'ssilva@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (1, 1, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (2, 1, false); 

INSERT INTO attendees (id, id_event, email) VALUES (2, 1, 'cgoldberg@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (1, 2, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (2, 2, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (2, 2, 'e4LB5jkSp', 'Meetup - week 2 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (3, 2, '2020-08-16 17:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (4, 2, '2020-08-16 12:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (3, 2, 'mcampos@undefined');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (3, 3, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (4, 3, true); 

INSERT INTO attendees (id, id_event, email) VALUES (4, 2, 'dpark@undefined');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (3, 4, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (4, 4, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (3, 3, 'eOQqetoRh', 'Meetup - week 3 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (5, 3, '2020-01-17 07:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (6, 3, '2020-01-17 18:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (5, 3, 'mcampos@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (5, 5, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (6, 5, false); 

INSERT INTO attendees (id, id_event, email) VALUES (6, 3, 'wmacintosh@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (5, 6, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (6, 6, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (4, 4, 'eDLmeQrQL', 'Meetup - week 4 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (7, 4, '2020-06-09 06:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (8, 4, '2020-06-09 18:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (7, 4, 'amacintosh@undefined');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (7, 7, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (8, 7, false); 

INSERT INTO attendees (id, id_event, email) VALUES (8, 4, 'rpark@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (7, 8, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (8, 8, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (5, 5, 'eFVcAvlfS', 'Meetup - week 5 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (9, 5, '2020-01-18 06:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (10, 5, '2020-01-18 11:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (9, 5, 'jborham@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (9, 9, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (10, 9, true); 

INSERT INTO attendees (id, id_event, email) VALUES (10, 5, 'mrobertson@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (9, 10, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (10, 10, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (6, 6, 'esf32hRS9', 'Meetup - week 6 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (11, 6, '2020-10-03 14:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (12, 6, '2020-10-03 10:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (11, 6, 'jrobertson@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (11, 11, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (12, 11, true); 

INSERT INTO attendees (id, id_event, email) VALUES (12, 6, 'rsilva@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (11, 12, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (12, 12, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (7, 7, 'eq5dMfxnw', 'Meetup - week 7 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (13, 7, '2020-05-24 10:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (14, 7, '2020-05-24 12:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (13, 7, 'mstevenson@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (13, 13, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (14, 13, false); 

INSERT INTO attendees (id, id_event, email) VALUES (14, 7, 'ppark@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (13, 14, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (14, 14, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (8, 8, 'eQZ90UFTM', 'Meetup - week 8 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (15, 8, '2020-09-07 12:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (16, 8, '2020-09-07 18:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (15, 8, 'dgoldberg@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (15, 15, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (16, 15, true); 

INSERT INTO attendees (id, id_event, email) VALUES (16, 8, 'jsilva@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (15, 16, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (16, 16, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (9, 9, 'eZ8cfvlN3', 'Meetup - week 9 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (17, 9, '2020-05-01 15:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (18, 9, '2020-05-01 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (17, 9, 'asmith@undefined');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (17, 17, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (18, 17, false); 

INSERT INTO attendees (id, id_event, email) VALUES (18, 9, 'rliu@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (17, 18, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (18, 18, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (10, 10, 'eS40sHbIY', 'Meetup - week 10 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (19, 10, '2020-01-04 19:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (20, 10, '2020-01-04 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (19, 10, 'drobertson@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (19, 19, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (20, 19, true); 

INSERT INTO attendees (id, id_event, email) VALUES (20, 10, 'jcampos@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (19, 20, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (20, 20, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (11, 11, 'etKE7wovi', 'Meetup - week 11 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (21, 11, '2020-07-09 06:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (22, 11, '2020-07-09 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (21, 11, 'pcampos@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (21, 21, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (22, 21, false); 

INSERT INTO attendees (id, id_event, email) VALUES (22, 11, 'dlord@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (21, 22, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (22, 22, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (12, 12, 'ePZL4Xo9Y', 'Meetup - week 12 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (23, 12, '2020-03-15 19:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (24, 12, '2020-03-15 12:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (23, 12, 'smurray@undefined');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (23, 23, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (24, 23, false); 

INSERT INTO attendees (id, id_event, email) VALUES (24, 12, 'lbrown@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (23, 24, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (24, 24, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (13, 13, 'exmCbCPue', 'Meetup - week 13 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (25, 13, '2020-02-22 11:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (26, 13, '2020-02-22 19:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (25, 13, 'jrobertson@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (25, 25, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (26, 25, false); 

INSERT INTO attendees (id, id_event, email) VALUES (26, 13, 'bsantos@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (25, 26, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (26, 26, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (14, 14, 'epy4RkITb', 'Meetup - week 14 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (27, 14, '2020-01-22 07:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (28, 14, '2020-01-22 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (27, 14, 'mmorrissete@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (27, 27, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (28, 27, false); 

INSERT INTO attendees (id, id_event, email) VALUES (28, 14, 'mmurray@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (27, 28, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (28, 28, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (15, 15, 'ePEEt16fN', 'Meetup - week 15 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (29, 15, '2020-06-25 19:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (30, 15, '2020-06-25 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (29, 15, 'jpark@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (29, 29, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (30, 29, true); 

INSERT INTO attendees (id, id_event, email) VALUES (30, 15, 'lcampos@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (29, 30, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (30, 30, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (16, 16, 'ec2RkP8N7', 'Meetup - week 16 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (31, 16, '2020-06-08 09:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (32, 16, '2020-06-08 15:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (31, 16, 'mbond@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (31, 31, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (32, 31, true); 

INSERT INTO attendees (id, id_event, email) VALUES (32, 16, 'rclark@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (31, 32, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (32, 32, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (17, 17, 'ejj43lOKH', 'Meetup - week 17 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (33, 17, '2020-11-17 15:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (34, 17, '2020-11-17 18:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (33, 17, 'dlord@undefined');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (33, 33, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (34, 33, true); 

INSERT INTO attendees (id, id_event, email) VALUES (34, 17, 'wrobertson@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (33, 34, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (34, 34, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (18, 18, 'eNLcSaKut', 'Meetup - week 18 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (35, 18, '2020-02-21 16:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (36, 18, '2020-02-21 10:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (35, 18, 'jborham@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (35, 35, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (36, 35, false); 

INSERT INTO attendees (id, id_event, email) VALUES (36, 18, 'obrown@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (35, 36, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (36, 36, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (19, 19, 'efbLXHI2R', 'Meetup - week 19 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (37, 19, '2020-11-01 12:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (38, 19, '2020-11-01 11:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (37, 19, 'gliu@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (37, 37, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (38, 37, true); 

INSERT INTO attendees (id, id_event, email) VALUES (38, 19, 'mblack@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (37, 38, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (38, 38, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (20, 20, 'ezJ7csT8J', 'Meetup - week 20 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (39, 20, '2020-02-19 07:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (40, 20, '2020-02-19 14:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (39, 20, 'scampos@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (39, 39, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (40, 39, false); 

INSERT INTO attendees (id, id_event, email) VALUES (40, 20, 'lpark@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (39, 40, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (40, 40, false); 

ALTER SEQUENCE events_id_seq RESTART WITH 21;
ALTER SEQUENCE event_options_id_seq RESTART WITH 41;
ALTER SEQUENCE attendees_id_seq RESTART WITH 41;
