class RandomData {
  constructor () {
    this.length = 6;
    this.range = "abcdefghijklmnopqrstuvxwyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    this.firstName = ['John', 'Brian', 'James', 'William', 'Justin', 'Michael', 'Anna', 'Mary', 'Olga', 'Helen', 'Pamela', 'Carol', 'Stella',
                       'Madison', 'Art', 'George', 'Charles', 'Rita', 'Dianne', 'Lucy', 'Steve', 'Kim', 'Jacob', 'Mark'];
    this.lastName = ['Black', 'Smith', 'Goldberg', 'Dafoe', 'Macintosh', 'Gates', 'Jobs', 'Morrissete', 'Bond', 'Borham', 'Robertson', 'Park',
                     'Silva', 'Campos', 'Santos', 'Orlof','Lee', 'Stevenson', 'Murray', 'Lord', 'Gillan', 'Clark', 'Brown', 'Kubitz', 'Liu'];
    this.provider = ['fake.com', 'wontwork.com', 'notreal.com', 'aol.com'];
  }

  getNewID( length = this.length ) {
    const rangeLength = this.range.length - 1;
    let vShortStr = "";

    // loops for the length requested, selection randomly a char from the array to compose the ID
    for (let i = 1; i <= length; i++){
      vShortStr += this.range[Math.round(Math.random() * rangeLength) ];
    }
    return vShortStr;
  }

  getNewUser() {
    const userID = this.getNewID();
    const fnLength = this.firstName.length -1;
    const lnLength = this.lastName.length -1;
    const firstName = this.firstName[Math.round(Math.random() * fnLength) ];
    const lastName = this.lastName[Math.round(Math.random() * lnLength) ];
    const email = firstName[0].toLowerCase() + lastName.toLowerCase() + "@" + this.provider[Math.round(Math.random() * this.provider.length-1)];
    return {id: userID, firstName: firstName, lastName: lastName, email: email};
  }

  getRandomInt( min = 1, max = 100 ) {
    const vRet = Math.floor(Math.random() * (max - min) + min);
    return vRet < 10 ? "0" + vRet : vRet;
  }
  getRamdonBoolean() {
    const vRet = Math.random() >= 0.5;
    return vRet;
  }
}

let qtUser = process.argv[2];
let qtEvent = process.argv[3];

if (!qtUser || !qtEvent){
  console.log("To use this script, provide the number of users and events to be created, i.e.:\n\nnode generateSeed.js 10 5\n\nwill generate 10 users and 5 events.\n")
} else {

  let j = 0;
  const oData = new RandomData;

  for (let i = 1; i <= qtUser; i++) {
    const newUser = oData.getNewUser();
    console.log(`INSERT INTO users (id, username, name, email) VALUES(${i}, 'u${newUser.id}', '${newUser.firstName} ${newUser.lastName}', '${newUser.email}');`);
  }

  // Sets users.id serial to +1 from the seeded users
  console.log(`ALTER SEQUENCE users_id_seq RESTART WITH ${++qtUser};`,"\n");

  for (let i = 1, j = 1; i <= qtEvent; i++, j++) {
    console.log(`INSERT INTO events(id, id_organizer, url, title, location, description) VALUES (${i}, ${i}, 'e${oData.getNewID(8)}', 'Meetup - week ${i} of ${qtEvent}', 'Work Nicer Stephen Avenue- 6th Floor', 'Just another test of this app' );`);

    const vDate = '2020-' + oData.getRandomInt(1, 12) + "-" + oData.getRandomInt(1, 28);
    console.log(`INSERT INTO event_options (id, id_event, date_time) VALUES (${j}, ${i}, '${vDate + " " + oData.getRandomInt(6, 20) + ":00"}');`);
    console.log(`INSERT INTO event_options (id, id_event, date_time) VALUES (${++j}, ${i}, '${vDate + " " + oData.getRandomInt(8, 20) + ":00"}');`,'\n');

    console.log(`INSERT INTO attendees (id, id_event, email) VALUES (${--j}, ${i}, '${oData.getNewUser().email}');`);
    console.log(`INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (${j}, ${j}, ${oData.getRamdonBoolean()});`);
    console.log(`INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (${++j}, ${--j}, ${oData.getRamdonBoolean()});`, '\n');

    console.log(`INSERT INTO attendees (id, id_event, email) VALUES (${++j}, ${i}, '${oData.getNewUser().email}');`);
    console.log(`INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (${--j}, ${++j}, ${oData.getRamdonBoolean()});`);
    console.log(`INSERT INTO attendee_options (id_option, id_attendee, availability) VALUES (${j}, ${j}, ${oData.getRamdonBoolean()});`, '\n');
  }

  console.log(`ALTER SEQUENCE events_id_seq RESTART WITH ${++qtEvent};`);

  // adjust for events, options and attendees. We're using 2 options and 2 attendees per event when seeding the database
  qtEvent = --qtEvent * 2 +1
  console.log(`ALTER SEQUENCE event_options_id_seq RESTART WITH ${qtEvent};`);
  console.log(`ALTER SEQUENCE attendees_id_seq RESTART WITH ${qtEvent};`);
}