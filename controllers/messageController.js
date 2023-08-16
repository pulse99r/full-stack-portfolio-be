const express = require("express");
const messageRecords = express.Router();


const {
  getAllMessages,
  getAllUsers,
  // getMessage,
  // createMessage,
  // deleteMessage,
  // updateMessage,
} = require("../queries/messageRecords");


// * * * ROUTES * * *
// app.get("/", (req, res) => {
//   res.send(`Welcome to <a href='http://localhost:3347/'>Kenti's Messaging</a>`);
// });

// INDEX ALL MESSAGES
messageRecords.get("/messages", async (req, res) => {
  const allMessages = await getAllMessages();
  if (allMessages[0]) {
    res.status(200).json(allMessages);
  } else {
    res.status(500).json({ error: "server error" });
  }
});

// INDEX ALL USERS
// messageRecords.get("/users", async (req, res) => {
//   const allUsers = await getAllUsers();
//   if (allUsers[0]) {
//     res.status(200).json(allUsers);
//   } else {
//     res.status(500).json({ error: "server error" });
//   }
// });

module.exports = {
  messageRecords
};