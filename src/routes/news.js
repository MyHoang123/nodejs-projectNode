const express = require('express')
const router = express.Router()

const newsController = require('../Controllers/NewsController')

router.use('/', newsController.index)

module.exports = router
