const db = require('../configs/connect')
const Account = function(account) {
        this.Acc = account.Acc
        this.Pass = account.Pass
        this.Quyen = account.Access
}

Account.get_all = function (result) {
    db.query("SELECT * FROM account", function(err, account) {
        if(err) {
            result (null)
        }
        else {
            result (account)
        }
    })
}

Account.login = async (Acc,Pass,result) => {
    await db.query(`SELECT * FROM account WHERE Acc=? AND Pass=?`,[Acc,Pass], function(err, res){
        if(err) {
            result (null)
            return
        }
        if(res.length) {
            result (null,res[0])
            return
        }
        result (null,null)
    })
}
// INSERT INTO `account` (`idAcc`, `Acc`, `Pass`, `Access`) VALUES
Account.register = async (Acc, Pass) => {
    await db.query('INSERT INTO account (Acc, Pass)  VALUE(?,?)',[Acc,Pass])
}



module.exports = Account