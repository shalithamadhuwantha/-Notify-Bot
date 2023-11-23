// dbConfig.js

const mysql = require('mysql2');

const connection = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'wa-bot',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
  // Set a very large timeout value (in seconds)
  connectTimeout: 9999999,  // Adjust this value based on your requirements
});
connection.on('error', (err) => {
  if (err.code === 'PROTOCOL_CONNECTION_LOST') {
    console.error('Database connection was closed. Reconnecting.');
    pool.end();
    pool.createPool();
  } else {
    throw err;
  }
});
connection.getConnection((err) => {
  if (err) {
    console.error('Error connecting to the database:', err);
    throw err;
  }
  console.log('Connected to the database');
});

module.exports = connection;
