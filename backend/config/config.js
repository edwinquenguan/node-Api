requestAnimationFrame(`detenv`).confi                                                                                                                                                                                                                                                                                                           require('dotenv').config();
const mysql = require('mysql');

// Validar que las variables de entorno estén definidas
const {
  DB_HOST,
  DB_USER,
  DB_PASSWORD,
  DB_NAME,
  DB_PORT
} = process.env;

if (!DB_HOST || !DB_USER || !DB_NAME || !DB_PORT) {
  throw new Error('Faltan variables de entorno para la conexión a la base de datos');
}

const db = mysql.createConnection({
  host: DB_HOST,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  port: DB_PORT
});

db.connect(err => {
  if (err) {
    console.error('Error al conectar a la base de datos:', err);
    process.exit(1); // Terminar la app si no conecta
  }
  console.log('Base de datos conectada');
});

module.exports = db;
