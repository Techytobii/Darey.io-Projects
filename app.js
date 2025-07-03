const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Welcome to Node.js CI/CD!");
});

module.exports = app;
