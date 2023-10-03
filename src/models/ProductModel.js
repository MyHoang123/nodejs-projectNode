const db = require('../configs/connect')
const express = require('express')
const Product = function(product) {
        this.tenSP = product.tenSP
        this.giaSP = product.giaSP
        this.hinhSP = product.hinhSP
}
// const Category = function(category) {
//     this.tenNhom = category.tenNhom
// }

Product.getAllProduct = function (result) {
    db.query("SELECT * FROM product", function(err, product) {
        if(err) {
            result (null)
        }
        else {
            result (product)
        }
    })
}
// Category.getAllCategory = function (result) {
//     db.query("SELECT * FROM type", function(err, category) {
//         if(err) {
//             result (null)
//         }
//         else {
//             result (category)
//         }
//     })
// }
// const getAllProduct = async () => {
//     const [rows, fiedls] = await db.query('SELECT * FROM product')
//     return rows
// }
// const getAllCategory = async () => {
//     const[rows, fiedls] = await db.query('SELECT * FROM type')
//     return rows
// }
module.exports = Product