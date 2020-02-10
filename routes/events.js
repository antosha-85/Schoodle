
const express = require('express');
const router  = express.Router();

module.exports = (db) => {
    router.get("/events/new", (req, res) => {
        res.render('create')
        return;
  });

    router.post("/new", (req, res) => {
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
        res.render('view_events', templateVars)
        console.log(req.body)
        return
    })

  //render whatever
  return router;
};
