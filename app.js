const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('CI/CD is awesome!');
});

module.exports = app;
