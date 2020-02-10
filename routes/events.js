
const express = require('express');
const router  = express.Router();
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
        //get data from req.body
        // let templateVars = {
        //   name: req.body.name,
        //   email: req.body.email,
        //   title: req.body.title,
        //   date: req.body.date,
        //   time: req.body.time,
        //   location: req.body.location,
        //   description: req.body.description,
        //   invitees: req.body.invitees
        // };

        //insert into db

        const queryString = `INSERT INTO users (username, name, email) VALUES($1, $2, 
        $3);`

        const values = ['u' + generateRandromString(6), req.body.name, req.body.email];

        pool.query(queryString, values)
        .then(res => {
            console.log(`connected`);
          res.rows.forEach(user => {
            console.log(`${user.name}:  ${user.title}`);
          })
        }).catch(err => console.error('query error', err.stack));
        
        //redirect
        res.redirect('/api/v1.0/events')
        // console.log(req.body)
        return
    })

    router.get("/events", (req, res) => {

      //fetch from database 

      let templateVars = {
        name: req.body.name,
        email: req.body.email,
        title: req.body.title,
        date: req.body.date,
        time: req.body.time,
        location: req.body.location,
        description: req.body.description,
        invitees: req.body.invitees
      };

      
      // render data using template variables
      res.render('view_events', templateVars)
      return;
});

  //render whatever
  return router;
};
