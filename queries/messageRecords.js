// Messaging queries

const db = require("../db/dbConfig.js");

// Get all Messages
const getAllMessages = async () => {
  try {
    const allMessages = await db.any("SELECT sender_id, topic, sent_at, reply_to, f_name, l_name, recipient_id from messages INNER JOIN users ON sender_id = id");
    return allMessages;
  } catch (error) {
    return error;
  }
};

// Get all Users
// const getAllUsers = async () => {
//   try {
//     const allUsers = await db.any("SELECT id, f_name, l_name, email from users");
//     return allUsers;
//   } catch (error) {
//     return error;
//   }
// };

// //Get one message
// const getMessage = async (id) => {
//   try {
//     const oneMessage = await db.one("SELECT * FROM recipes WHERE id=$1", id);
//     return oneMessage;
//   } catch (error) {
//     return error;
//   }
// };

// // CREATE message route
// const createMessage = async (message) => {
//   try {
//       const newMessage =  await db.one(
        
//         "INSERT INTO recipes (name, img, ingredients, instructions, cooking_time, nationality, is_favorite) VALUES($1, $2, $3, $4, $5, $6, $7) RETURNING * ", [recipes.name, recipes.img, recipes.ingredients, recipes.instructions, recipes.cooking_time, recipes.nationality, recipes.is_favorite]
//       );
//       return newMessage
//   } catch (error) {
//     throw error;
//   }
// };

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
  getAllUsers
  // getMessage,
  // createMessage,
};
  // , createMessage, deleteMessage, updateMessage};