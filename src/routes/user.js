const express = require('express')
const router = express.Router()

const UserController = require('../Controllers/UserController')

router.post('/login', UserController.login)
router.post('/register', UserController.register)
router.use('/', UserController.index)

module.exports = router
