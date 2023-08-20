const express = require("express");
const messages = express.Router();


const {
  getAllMessages,
  getAllUsers,
  getMessage,
  createMessage,
  // deleteMessage,
  // updateMessage,
} = require("../queries/messageRecords");


// * * * ROUTES * * *

// INDEX ALL MESSAGES
messages.get("/", async (req, res) => {
  const allMessages = await getAllMessages();
  if (allMessages[0]) {
    res.status(200).json(allMessages);
  } else {
    res.status(500).json({ error: "server error" });
  }
});


// SHOW One Message
messages.get("/:id", async (req, res) => {
  console.log("--- getting single message id=1 ---")
  const id = req.params.id;
  const oneMessage = await getMessage(id);
  if (oneMessage) {
    res.status(200).json(oneMessage);
  } else {
    res.status(500).json({ error: "server error" });
  }
});


// CREATE New Message
messages.get("/:id", async (req, res) => {
  console.log("--- getting single message id=1 ---")
  const id = req.params.id;
  const oneMessage = await getMessage(id);
  if (oneMessage) {
    res.status(200).json(oneMessage);
  } else {
    res.status(500).json({ error: "server error" });
  }
});


module.exports = messages;