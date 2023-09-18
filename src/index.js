const render = require('ejs');
const dotenv = require('dotenv');
const express = require('express');
const app = express();
const port = 3000;
app.set('view engine', 'ejs');
app.set('views', './src/views');
app.get('/', (req, res) => {
    res.send('Hello Word')
});
app.get('/about', (req, res) => {
    res.render('about')
});
app.listen(port, () => {
console.log(`Example app listening on port ${port}`)
});