const mysql = require('mysql2');

const db = mysql.createPool({
  host: 'localhost',
  user: 'root',
  database: 'photo_db',
  password: 'Samison12'
});

module.exports = db.promise();