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
profiles.get("/", async (req, res) => {
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


/* CREATE/POST USER  */
// First Validate user:

const validateUser = (req, res, next) => {
  const { topic, msg_body, sender_id, recipient_id, reply_to } = req.body;
  if (req.body.f_name && req.body.l_name && req.body.email) {
    console.log("Validated - Creating user record")
    next();
  } else {
    res.status(400).json({ error: "User cannot be left empty!" });
  }
};

// ...then CREATE NEW USER
users.post("/", validateUser, async (req, res) => {
  try {
    const user = await createMessage(req.body);
    res.json(user);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});
// ...then CREATE NEW USER PROFILE
users.post("/", validateUserProfile, async (req, res) => {
  try {
    const userProfile = await createMessage(req.body);
    res.json(userProfile);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

module.exports = users
