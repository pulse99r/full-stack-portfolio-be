// DEPENDENCIES
const cors = require("cors");
const express = require("express");

// CONFIGURATION
const app = express();

// MIDDLEWARE
app.use(cors()); // Cross Origin Resource Sharing
app.use(express.json());

// // * * * ROUTES * * *
app.get("/", (req, res) => {
  res.send(`Welcome to <a href='http://localhost:3347/'>Kenti's Messaging</a>`);
});

// Recipes ROUTES
const messageController = require("./controllers/messageController.js");
app.use("/messages", messageController);
app.use("/users", messageController);



// 404 PAGE
app.get("*", (req, res) => {
  res.status(404).send("Page not found");
});

// EXPORT
module.exports = app;