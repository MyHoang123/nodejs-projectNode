const db = require('../configs/connect')
const Category = function(category) {
        this.tenNhom = category.tenNhom
}

Category.getAllCategory = function (result) {
    db.query("SELECT * FROM type", function(err, category) {
        if(err) {
            result (null)
        }
        else {
            result (category)
        }
    })
}

module.exports = Category