// Messaging queries

const db = require("../db/dbConfig.js");

/* - - - - MESSAGE QUIRES - - - -  */
// Get all Messages
const getAllMessages = async () => {
  
  try {
    const allMessages = await db.any("SELECT * FROM messages");
    // const allMessages = await db.any("SELECT msg_id, sender_id, topic, sent_at, reply_to, f_name, l_name, recipient_id from messages INNER JOIN users ON messages.sender_id = users.id");
    return allMessages;
  } catch (error) {
    return error;
  }
};

// Get one message
const getMessage = async (msg_id) => {
  try {
    const oneMessage = await db.one("SELECT * FROM messages WHERE msg_id=$1", msg_id);
    return oneMessage;
  } catch (error) {
    return error;
  }
};

// CREATE/POST message route
const createMessage = async (message) => {
  // console.log("create Message entered")
  // console.log("* * * Message * * *")
  console.log(message)
  try {
      const newMessage =  await db.one(
        "INSERT INTO messages (topic, msg_body, sender_id, recipient_id, reply_to) VALUES($1, $2, $3, $4, $5) RETURNING *", [message.topic, message.msg_body, message.sender_id, message.recipient_id, message.reply_to]
      );
      return newMessage
  } catch (error) {
    throw error;
  }
};

// - - - - - - USER QUERIES - - - - -
// Get all Users
const getAllUsers = async () => {
  try {
    const allUsers = await db.any("SELECT * from users");
    return allUsers;
  } catch (error) {
    return error;
  }
};

// Get one Users
const getUser = async (id) => {
  try {
    const oneUser = await db.one("SELECT id, f_name, l_name, email, password_hash, create_date, user_id, banner, bio, related FROM users INNER JOIN profiles ON id = user_id WHERE users.id=$1", id);
    return oneUser;
  } catch (error) {
    return error;
  }
};
// Friends Relationship via profiles;
const getProfileView = async (id) => {
  try {
    const friendsProfile = await db.one("SELECT id AS USER, f_name, l_name, create_date,  banner, bio, related FROM users INNER JOIN profiles ON id = user_id WHERE users.id=$1", id);
    return oneUser;
  } catch (error) {
    return error;
  }
};

/* Create New User */
const createUser = async (user) => {
  try {
    const newUser =  await db.one(
      "INSERT INTO users (f_name, l_name, email, password_hash, create_date) VALUES($1, $2, $3, $4, $5) RETURNING * ", [user.f_name, user.l_name, user.email, user.password_hash, user.create_date]
    );
    return newUser
  } catch (error) {
    throw error;
  }
};
const createProfile = async (useProfile) => {
  try {
      const newProfile =  await db.one(
        "INSERT INTO profiles (user_id, banner, bio, related) VALUES($1, $2, $3, $4) RETURNING * ", [user.user_id, user.banner, user.bio, user.related]
      );
      return newProfile
  } catch (error) {
    throw error;
  }
};


// const deleteRecipe = async (id) => {
//   try {
//     const deletedRecipe = await db.one(
//       "DELETE FROM recipes WHERE id = $1 RETURNING *", id 
//       );
//     return deletedRecipe;
//   } catch (error) {
//     return error;
//   }
// };

// const updateRecipe = async (id, recipe) => {
//   try {
//     const updatedRecipe = await db.one(
//       "UPDATE recipes SET name=$1, img=$2, ingredients=$3, instructions=$4, cooking_time=$5, nationality=$6, is_Favorite=$7 WHERE id=$8 RETURNING *",
//       [recipe.name, recipe.img, recipe.ingredients, recipe.instructions, recipe.cooking_time, recipe.nationality, recipe.is_Favorite, id]
//     );
//     return updatedRecipe;
//   } catch (error) {
//     return error;
//   }
// };


module.exports = {
  getAllMessages,
  getMessage,
  createMessage,
  getAllUsers,
  getUser,
  createUser,
  createProfile,
};
  // , createMessage, deleteMessage, updateMessage};