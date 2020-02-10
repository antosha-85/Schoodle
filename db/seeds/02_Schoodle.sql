INSERT INTO users (id, username, name, email) VALUES(1, 'u6uFYob', 'Justin Black', 'jblack1@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(2, 'udby3EX', 'Helen Clark', 'hclark2@icq.com');
INSERT INTO users (id, username, name, email) VALUES(3, 'uvX3MOV', 'William Park', 'wpark3@icq.com');
INSERT INTO users (id, username, name, email) VALUES(4, 'unmUA1G', 'Kim Park', 'kpark4@fake.com');
INSERT INTO users (id, username, name, email) VALUES(5, 'ufWEOYE', 'Helen Gillan', 'hgillan5@aol.com');
INSERT INTO users (id, username, name, email) VALUES(6, 'uYncARi', 'Steve Park', 'spark6@aol.com');
INSERT INTO users (id, username, name, email) VALUES(7, 'uYdF8Gd', 'Dianne Lord', 'dlord7@fake.com');
INSERT INTO users (id, username, name, email) VALUES(8, 'uEX3xGA', 'Olga Santos', 'osantos8@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(9, 'uQrprh6', 'George Park', 'gpark9@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(10, 'uzEgqtz', 'Helen Bond', 'hbond10@aol.com');
INSERT INTO users (id, username, name, email) VALUES(11, 'uGY6h24', 'Michael Kubitz', 'mkubitz11@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(12, 'u8xOMFV', 'Charles Morrissete', 'cmorrissete12@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(13, 'uVrOkX5', 'Anna Morrissete', 'amorrissete13@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(14, 'uSB8hkZ', 'Stella Gillan', 'sgillan14@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(15, 'uJzJvyd', 'William Silva', 'wsilva15@aol.com');
INSERT INTO users (id, username, name, email) VALUES(16, 'uZSoM4Z', 'Justin Gates', 'jgates16@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(17, 'uzgHhgB', 'Charles Clark', 'cclark17@aol.com');
INSERT INTO users (id, username, name, email) VALUES(18, 'ueW8Alu', 'Steve Smith', 'ssmith18@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(19, 'uHrYJER', 'Mark Smith', 'msmith19@wontwork.com');
INSERT INTO users (id, username, name, email) VALUES(20, 'u3GeJPj', 'Olga Lee', 'olee20@aol.com');
INSERT INTO users (id, username, name, email) VALUES(21, 'uiOJEVr', 'Justin Stevenson', 'jstevenson21@aol.com');
INSERT INTO users (id, username, name, email) VALUES(22, 'uVyRfV9', 'Anna Stevenson', 'astevenson22@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(23, 'ujn1Qco', 'Rita Santos', 'rsantos23@aol.com');
INSERT INTO users (id, username, name, email) VALUES(24, 'unJdsfx', 'Justin Lee', 'jlee24@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(25, 'uxVwFxZ', 'Pamela Silva', 'psilva25@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(26, 'u5gYFOG', 'Pamela Jobs', 'pjobs26@icq.com');
INSERT INTO users (id, username, name, email) VALUES(27, 'uBEW5yo', 'Steve Orlof', 'sorlof27@notreal.com');
INSERT INTO users (id, username, name, email) VALUES(28, 'uEvs1uc', 'Anna Santos', 'asantos28@aol.com');
INSERT INTO users (id, username, name, email) VALUES(29, 'um3fk5K', 'Michael Macintosh', 'mmacintosh29@icq.com');
INSERT INTO users (id, username, name, email) VALUES(30, 'uZ2i9KN', 'Lucy Gillan', 'lgillan30@icq.com');
ALTER SEQUENCE users_id_seq RESTART WITH 31; 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (1, 1, 'ez1EVNjA9', 'Meetup - week 1 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (1, 1, '2020-08-20 18:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (2, 1, '2020-08-20 19:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (1, 1, 'mrobertson@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (1, 1, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (2, 1, false); 

INSERT INTO attendees (id, id_event, email) VALUES (2, 1, 'sgates@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (1, 2, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (2, 2, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (2, 2, 'eHBa4TkR1', 'Meetup - week 2 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (3, 2, '2020-11-26 12:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (4, 2, '2020-11-26 15:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (3, 2, 'rorlof@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (3, 3, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (4, 3, false); 

INSERT INTO attendees (id, id_event, email) VALUES (4, 2, 'rbrown@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (3, 4, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (4, 4, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (3, 3, 'eMDzdtVS2', 'Meetup - week 3 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (5, 3, '2020-05-10 15:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (6, 3, '2020-05-10 16:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (5, 3, 'lgillan@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (5, 5, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (6, 5, true); 

INSERT INTO attendees (id, id_event, email) VALUES (6, 3, 'jorlof@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (5, 6, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (6, 6, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (4, 4, 'esGlZ6ICB', 'Meetup - week 4 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (7, 4, '2020-07-10 19:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (8, 4, '2020-07-10 09:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (7, 4, 'rborham@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (7, 7, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (8, 7, false); 

INSERT INTO attendees (id, id_event, email) VALUES (8, 4, 'jmurray@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (7, 8, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (8, 8, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (5, 5, 'eYrG7LMyB', 'Meetup - week 5 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (9, 5, '2020-11-20 17:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (10, 5, '2020-11-20 15:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (9, 5, 'plee@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (9, 9, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (10, 9, true); 

INSERT INTO attendees (id, id_event, email) VALUES (10, 5, 'clord@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (9, 10, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (10, 10, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (6, 6, 'eUApWpUDU', 'Meetup - week 6 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (11, 6, '2020-07-13 10:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (12, 6, '2020-07-13 09:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (11, 6, 'bstevenson@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (11, 11, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (12, 11, true); 

INSERT INTO attendees (id, id_event, email) VALUES (12, 6, 'jborham@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (11, 12, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (12, 12, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (7, 7, 'eyFWDs7q2', 'Meetup - week 7 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (13, 7, '2020-03-26 17:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (14, 7, '2020-03-26 16:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (13, 7, 'krobertson@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (13, 13, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (14, 13, false); 

INSERT INTO attendees (id, id_event, email) VALUES (14, 7, 'pstevenson@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (13, 14, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (14, 14, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (8, 8, 'enDYyNYqx', 'Meetup - week 8 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (15, 8, '2020-09-15 12:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (16, 8, '2020-09-15 11:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (15, 8, 'jgoldberg@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (15, 15, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (16, 15, false); 

INSERT INTO attendees (id, id_event, email) VALUES (16, 8, 'lpark@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (15, 16, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (16, 16, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (9, 9, 'e37ORgGbX', 'Meetup - week 9 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (17, 9, '2020-11-15 11:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (18, 9, '2020-11-15 13:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (17, 9, 'gmurray@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (17, 17, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (18, 17, true); 

INSERT INTO attendees (id, id_event, email) VALUES (18, 9, 'rsantos@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (17, 18, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (18, 18, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (10, 10, 'eE1IfSzpp', 'Meetup - week 10 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (19, 10, '2020-09-20 11:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (20, 10, '2020-09-20 15:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (19, 10, 'cstevenson@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (19, 19, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (20, 19, true); 

INSERT INTO attendees (id, id_event, email) VALUES (20, 10, 'sbrown@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (19, 20, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (20, 20, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (11, 11, 'eXXw7pOXx', 'Meetup - week 11 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (21, 11, '2020-11-14 14:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (22, 11, '2020-11-14 15:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (21, 11, 'ldafoe@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (21, 21, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (22, 21, false); 

INSERT INTO attendees (id, id_event, email) VALUES (22, 11, 'ssantos@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (21, 22, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (22, 22, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (12, 12, 'en1KxXieO', 'Meetup - week 12 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (23, 12, '2020-11-24 07:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (24, 12, '2020-11-24 08:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (23, 12, 'omorrissete@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (23, 23, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (24, 23, true); 

INSERT INTO attendees (id, id_event, email) VALUES (24, 12, 'jclark@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (23, 24, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (24, 24, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (13, 13, 'eqkA5I6EE', 'Meetup - week 13 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (25, 13, '2020-08-15 14:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (26, 13, '2020-08-15 08:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (25, 13, 'bcampos@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (25, 25, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (26, 25, false); 

INSERT INTO attendees (id, id_event, email) VALUES (26, 13, 'gstevenson@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (25, 26, false);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (26, 26, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (14, 14, 'evatnCFZk', 'Meetup - week 14 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (27, 14, '2020-07-25 17:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (28, 14, '2020-07-25 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (27, 14, 'hbrown@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (27, 27, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (28, 27, false); 

INSERT INTO attendees (id, id_event, email) VALUES (28, 14, 'jbond@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (27, 28, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (28, 28, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (15, 15, 'erzhrMduW', 'Meetup - week 15 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (29, 15, '2020-05-17 15:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (30, 15, '2020-05-17 08:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (29, 15, 'mbond@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (29, 29, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (30, 29, true); 

INSERT INTO attendees (id, id_event, email) VALUES (30, 15, 'pgoldberg@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (29, 30, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (30, 30, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (16, 16, 'elhIYVUrP', 'Meetup - week 16 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (31, 16, '2020-01-06 09:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (32, 16, '2020-01-06 09:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (31, 16, 'corlof@notreal.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (31, 31, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (32, 31, true); 

INSERT INTO attendees (id, id_event, email) VALUES (32, 16, 'rstevenson@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (31, 32, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (32, 32, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (17, 17, 'eRDi09MgE', 'Meetup - week 17 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (33, 17, '2020-09-06 18:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (34, 17, '2020-09-06 15:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (33, 17, 'kborham@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (33, 33, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (34, 33, true); 

INSERT INTO attendees (id, id_event, email) VALUES (34, 17, 'dlee@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (33, 34, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (34, 34, true); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (18, 18, 'eIaClVUhJ', 'Meetup - week 18 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (35, 18, '2020-11-24 13:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (36, 18, '2020-11-24 13:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (35, 18, 'amorrissete@fake.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (35, 35, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (36, 35, true); 

INSERT INTO attendees (id, id_event, email) VALUES (36, 18, 'mrobertson@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (35, 36, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (36, 36, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (19, 19, 'ewGHwh9Wu', 'Meetup - week 19 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (37, 19, '2020-03-13 16:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (38, 19, '2020-03-13 17:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (37, 19, 'ksmith@icq.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (37, 37, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (38, 37, false); 

INSERT INTO attendees (id, id_event, email) VALUES (38, 19, 'msmith@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (37, 38, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (38, 38, false); 

INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (20, 20, 'eq077HRQo', 'Meetup - week 20 of 20', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );
INSERT INTO event_options (id, id_event, date_time) VALUES (39, 20, '2020-11-01 19:00');
INSERT INTO event_options (id, id_event, date_time) VALUES (40, 20, '2020-11-01 14:00'); 

INSERT INTO attendees (id, id_event, email) VALUES (39, 20, 'mcampos@aol.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (39, 39, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (40, 39, false); 

INSERT INTO attendees (id, id_event, email) VALUES (40, 20, 'mblack@wontwork.com');
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (39, 40, true);
INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (40, 40, true); 

ALTER SEQUENCE events_id_seq RESTART WITH 21;
ALTER SEQUENCE event_options_id_seq RESTART WITH 41;
ALTER SEQUENCE attendees_id_seq RESTART WITH 41;
