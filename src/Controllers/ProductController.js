const Product = require('../models/ProductModel')
exports.getAllProduct = async (red, res) => {
        await Product.getAllProduct(function(data) {
        res.render('product', {data})
    })
}