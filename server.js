const express = require('express');
const mysql = require('mysql2');
const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false}))
app.listen(express.json());



const db = mysql.createConnection(
    {
      host: 'localhost',
      user: 'root',
      password: 'Vertex213!',
      database: 'scpfoundation_db'
    },
console.log("Connected to the SCP Mainframe")

);


app.listen(PORT, () => {
    console.log(`Server is listening to SCP Mainframe via PORT ${PORT}`);
});

app.use((req, res) => {
    res.status(404).end();
});


db.query('SELECT * FROM employees', function (err, results) {
    console.log(results);
});


