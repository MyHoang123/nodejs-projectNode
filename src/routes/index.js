const userRoute = require('./user')
const productRoute = require('./product')
const categoryRoute = require('./category')


function route(app) {
    app.use('/user', userRoute);
    app.use('/', productRoute);
    // app.use('/', categoryRoute);
}
module.exports = route