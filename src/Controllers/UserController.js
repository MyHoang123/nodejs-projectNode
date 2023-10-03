const Account = require('../models/UserModel')
const bcrypt = require('bcrypt')
const { use } = require('../routes/user')
exports.index = function (req, res)  {
        Account.get_all(function(data) {
            res.render('user', {data})
        })
    }

exports.login = async (req, res) => {
    const {inputacc, inputpass} = req.body;
    if (inputacc && inputpass) {
        await Account.login(inputacc,inputpass,(err,user)=>{
            if(user) {
                res.render('search')
            }
            // if(!user) {
            //     console.log('fail login')
            //     res.render('/')
            // }
            // else {
            //     bcrypt.compare(inputpass, user.Pass, (err, result) => {
            //         if(result == true) {
            //             req.session.user = user.Acc
            //             res.render('user')
            //         }
            //         else {
            //             console.log(user.Pass)
            //         }
            //     })
            // }
        })
    }
}

exports.register = async (req, res) => {
    const {Acc, Pass, Passn} = req.body
    await Account.register(Acc, Pass)
        res.redirect("/")
}