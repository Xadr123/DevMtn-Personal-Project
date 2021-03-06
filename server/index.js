require('dotenv').config()
const nodemailer = require('nodemailer')
const express = require('express')
const session = require('express-session')
const massive = require('massive')
const authCtrl = require('./authController')
const ctrl = require('./controller')
const checkUser = require('./middlewares/checkUser')
const app = express()
const { SERVER_PORT, CONNECTION_STRING, SESSION_SECRET } = process.env

// let transporter = nodemailer.createTransport({
//     service: 'gmail',
//     auth: {
//         user: '',
//         pass: ''
//     }
// })

// let mailOptions = {
//     from: '',
//     to: '',
//     subject: '',
//     text: ''
// }

// transporter.sendMail(mailOptions, (err, data) => {
//     if (err) {
//         console.log('Not sent')
//     } else {
//         console.log('Sent')
//     }
// })

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

//PRODUCT ENDPOINTS
app.get(`/api/products`, ctrl.getProducts)

//WISHLIST ENDPOINTS
app.post(`/api/wishlist`, ctrl.addToWishlist)
app.get(`/api/wishlist`, ctrl.getWishlist)
app.post(`/api/wishlist/subtract`, ctrl.subtractWishlist)
app.delete(`/api/wishlist/:product_id`, ctrl.deleteWishlist)

//STRIPE?
app.post('/api/payment', ctrl.pay)