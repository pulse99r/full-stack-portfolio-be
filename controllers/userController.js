const express = require("express");
const users = express.Router();


const {
  getAllUsers,
  getUser,
  // createUser,
  // deleteUser,
  // updateUser,
} = require("../queries/messageRecords");


// * * * ROUTES * * *

// INDEX ALL USERS
users.get("/", async (req, res) => {
  console.log("getting all users!")
  const allUsers = await getAllUsers();
  if (allUsers[0]) {
    res.status(200).json(allUsers);
  } else {
    res.status(500).json({ error: "server error" });
  }
});

//SHOW ONE USER
users.get("/:id", async (req, res) => {
  console.log("--- getting single user id=1 ---")
  const id = req.params.id;
  const oneUser = await getUser(id);
  if (oneUser) {
    res.status(200).json(oneUser);
  } else {
    res.status(500).json({ error: "server error" });
  }
});

module.exports = users
