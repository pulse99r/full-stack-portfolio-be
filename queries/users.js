const db = require("../db/dbConfig.js");

// Get all Users
const getAllUsers = async () => {
  try {
    const allUsers = await db.any("SELECT f_name, l_name, email from users");
    return allUsers;
  } catch (error) {
    return error;
  }
};

module.exports = { getAllUsers }