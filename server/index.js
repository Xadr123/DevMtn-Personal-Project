require('dotenv').config()
const express = require('express')
const massive = require('massive')
const authCtrl = require('./authController')
const ctrl = require('./controller')
const app = express()
const { SERVER_PORT, CONNECTION_STRING, SESSION_SECRET } = process.env

app.use(express.json)

massive({
    connectionString: CONNECTION_STRING,
    ssl: {
        rejectUnauthorized: false
    }
}).then(db => {
    const port = SERVER_PORT
    app.set('db', db)
    app.listen(port || 4420, () => console.log(`Server running on port: ${port}`))
    console.log('Database Connected')
})