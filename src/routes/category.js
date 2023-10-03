const express = require('express')
const router = express.Router()
const CategoryController = require('../Controllers/CategoryController')


router.use('/', CategoryController.index)

module.exports = router