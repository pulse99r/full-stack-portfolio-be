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


/* CREATE New Message    */
/* Pick Recipient User */


 /* Validate message */
const validateMessage = (req, res, next) => {
  const { topic, msg_body, sender_id, recipient_id, reply_to } = req.body;
  if (req.body.topic && req.body.msg_body) {
    console.log("Validated - Creating message record")
    next();
  } else {
    res.status(400).json({ error: "Message cannot be left empty!" });
  }
};

// ...then CREATE NEW MESSAGE
// CREATE
messages.post("/", validateMessage, async (req, res) => {
  try {
    const message = await createMessage(req.body);
    res.json(message);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});


module.exports = messages;