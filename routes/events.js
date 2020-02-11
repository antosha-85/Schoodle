
const express = require('express');
const router = express.Router();
const generateRandromString = require('../public/scripts/helperFunction');
const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'schoodle'
});

module.exports = (db) => {
  router.get("/events/new", (req, res) => {
    res.render('create')
    return;
  });

  router.post("/events", (req, res) => {
    //insert into db
    console.log('request', req.headers.cookie.split('sig=')[1])

    const queryString = `INSERT INTO users (username, name, email) VALUES($1, $2, 
        $3) returning *;`
    // adding cookies to the databaser;

    const values = ['u' + generateRandromString(6), req.body.name, req.body.email];

    const output = pool.query(queryString, values)
      .then(res => {
        console.log('returning response', res.rows)
        req.session.user_id = res.rows[0].id;
        console.log("TCL: req.session.user_id", req.session.user_id)
        req.session.user_name = res.rows[0].name;
        req.session.user_email = res.rows[0].email;
        return res;
      }).
      catch(err => console.error('query error', err.stack));

    //redirect
    res.redirect('/api/v1.0/events')
    return output
  })

  router.get("/events", (req, res) => {

    //fetch from database 

    const queryString = `SELECT name, e.id id_event, title, location, description,
      array_to_string(array(select to_char(date_time, 'Mon-DD-YYYY at HH24:mi') from event_options where id_event = e.id),', ') "options",
      COUNT(DISTINCT a.id) qty_attendees
      FROM users u
      INNER JOIN events e ON u.id = e.id_organizer
      LEFT JOIN attendees a ON e.id = a.id_event
      WHERE u.username = $1
      GROUP BY u.id, e.id`
    const values = ['u6uFYob'];

    const output = pool.query(queryString, values)
      .then(result => {
        //creating a variable to save an array of objects
        const user = result.rows;
        req.session.user_id = user.name;
        res.render('view_events', { output: user })
        console.log(user);
        return user;
      }).catch(err => console.error('query error', err.stack));
    // console.log("TCL: output", output)
    // render data using template variables
    
    return;
  });

  router.get("/events/:shortURL", (req, res) => {
    let templateVars = {
      name: req.body.name,
      email: req.body.email,
      title: req.body.title,
      date: req.body.date,
      time: req.body.time,
      location: req.body.location,
      description: req.body.description,
      invitees: req.body.invitees,
      user: req.session.user_id,
      shortURL: events.id
    };

    res.render('view_events', templateVars);
  });

  //render whatever
  return router;
};
