const express = require('express')
const router = express.Router()
const ProductController = require('../Controllers/ProductController')

// router.use('/a', ProductController.category)
router.use('/',ProductController.getAllProduct)

module.exports = router
