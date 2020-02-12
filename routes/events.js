
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
  router.get("/new", (req, res) => {
    res.render('create')
    return;
  });

  router.post("/", (req, res) => {
    //insert into db
    console.log('request', req.headers.cookie.split('sig=')[1]) //cookies 

    const queryString = `INSERT INTO users (username, name, email) VALUES($1, $2, 
        $3) returning *;`
    // adding cookies to the databaser;

    const values = ['u' + generateRandromString(6), req.body.name, req.body.email];

    const output = pool.query(queryString, values)
      .then(res => {
        // console.log('returning response', res.rows)
        req.session.user_id = res.rows[0].id;
        // console.log("TCL: req.session.user_id", req.session.user_id)
        req.session.user_name = res.rows[0].name;
        req.session.user_email = res.rows[0].email;
        return res;
      }).
      catch(err => console.error('query error', err.stack));

    //redirect
    res.redirect('/events')
    return output
  })

  router.get("/", (req, res) => {

    //fetch from database 

    const queryString = `select id_event, title, location, description, options, qty_attendees, url, id_organizer
    FROM vw_events
    WHERE id_organizer = $1`
    const values = ['1'];

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

  router.get("/:id_event/edit", (req, res) => {
    const queryString = `select id_event, title, location, description, options, qty_attendees, url, id_organizer
    FROM vw_events
    WHERE id_event = $1`
    const values = [req.params.id_event];

    const output = pool.query(queryString, values)
      .then(result => {
        //creating a variable to save an array of objects
        const user = result.rows;
        req.session.user_id = user.name;
        // console.log(user);
        // console.log('reqparamsidevent', req.params.id_event)
        res.render('view_events_edit', { output: user, id_event: req.params.id_event})
        return user;
      }).catch(err => console.error('query error', err.stack));
    // console.log("TCL: output", output)
    // render data using template variables

    return;
  });

  router.post('/:id_event/edit', (req, res) => {
    console.log('reqbody', req.body)
    const queryString = `UPDATE events
    SET title = $3, location = $4, description = $5 
    WHERE id = $1 AND id_organizer = $2`;
    
    // console.log("TCL: req.body.id_organizer", req.body.id_organizer)
    const values = [req.params.id_event, '1', req.body.title, req.body.location, req.body.description]
  const output = pool.query(queryString, values)
    .then(res => {
      // console.log('returning response', res.rows)
      // req.session.user_id = res.rows[0].id;
      // // console.log("TCL: req.session.user_id", req.session.user_id)
      // req.session.user_name = res.rows[0].name;
      // req.session.user_email = res.rows[0].email;
      return res;
    }).
    catch(err => console.error('query error', err.stack));

  //redirect
  res.redirect('/events')
  return output
  });

  //render whatever
  return router;
};
