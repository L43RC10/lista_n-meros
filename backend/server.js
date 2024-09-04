const express = require('express');
const mysql = require('mysql2');

// opções de conexão com o MySQL
const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '12345678b',
    database: 'db_numeros'
});

const app = new express();
app.listen(3000,  () => {
    console.log('Servidor iniciado');
});

// rotas
app.get("/", (req, res) => {
    // res.send('Hello World!');
    connection.query("SELECT COUNT(*) users FROM users", (err, results) => {
        if(err){
            res.send(err.message);
        }

        res.send(results);
    })
})