const path = require('path')
const dotenv = require('dotenv')
const express = require('express')
const { engine } = require ('express-handlebars')
const route = require('./routes/index')
const db = require('./configs/connect')
const session = require('express-session')
const { prototype } = require('events')
// connect database

db.conn;

const app = express()
const port = 3000;
app.use(session({
    secret: 'keyboard cat',
    resave: false,
    saveUninitialized: true,
    cookie: { secure: false }
    }))
app.use(express.urlencoded())
app.use(express.json())

app.use(express.static(path.join(__dirname ,'public')))
app.engine('hbs', engine({
    extname: ".hbs"
}));
app.set('view engine', 'hbs')
app.set('views', './src/views')

// Routes
route(app)
app.listen(port, () => {
console.log(`Example app listening on port ${port}`)
})