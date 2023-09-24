

class SiteController {
    home(red,res) {
        res.render('home')
    }
    search(red,res) {
        res.render('search')
    }
}

module.exports = new SiteController
