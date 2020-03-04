require('dotenv').config()
const express = require('express')
const session = require('express-session')
const massive = require('massive')
const authCtrl = require('./authController')
const ctrl = require('./controller')
const checkUser = require('./middlewares/checkUser')
const app = express()
const { SERVER_PORT, CONNECTION_STRING, SESSION_SECRET } = process.env

app.use(express.json())
app.use(
    session({
        resave: false,
        saveUninitialized: true,
        rejectUnauthorized: false,
        cookie: { maxAge: 1000 * 60 * 60 * 24 },
        secret: SESSION_SECRET
    })
)

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

//AUTH ENDPOINTS
app.post(`/auth/register`, checkUser, authCtrl.register)
app.post(`/auth/login`, checkUser, authCtrl.login)
app.post(`/auth/logout`, authCtrl.logout)
app.get(`/auth/user`, checkUser, authCtrl.getUser)