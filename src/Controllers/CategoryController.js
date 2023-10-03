const Category = require('../models/CategoryModel')
exports.index = function (req, res)  {
        Category.getAllCategory(function(category) {
            res.render('partials/categoryuser', {category})
        })
    }