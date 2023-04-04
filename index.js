const express = require("express");
const cors = require("cors");
const mysql = require("mysql2");
require("dotenv").config();

try {
  const pool = mysql.createPool({
    host:process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
  });

  const app = express();

  app.use(cors());

  app.get("/helloworld", (req, res, next) => {
    res.json({ msg: "hello world!" });
  });

  app.get("/api/users", (req, res, next) => {
    pool.query("SELECT * FROM test.users", (err, rows, fields) => {
      res.json(rows);
    });
  });

  const port = process.env.PORT || 5000;
  app.listen(port, () => {
    console.log(`listening on port ${port}`);
  });
} catch (error) {
  console.log(error);
}
