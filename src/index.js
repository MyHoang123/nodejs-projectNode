const path = require('path')
const dotenv = require('dotenv')
const express = require('express')
const { engine } = require ('express-handlebars')
const route = require('./routes/index')
const app = express()
const port = 3000;
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