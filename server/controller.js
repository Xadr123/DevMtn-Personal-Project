const stripe = require('stripe')(process.env.STRIPE_SECRET)

module.exports = {
    getProducts: async (req, res) => {
        const db = req.app.get('db')

        let products = await db.get_products()
        if (products[0]) {
            res.status(200).send(products)
        } else {
            res.sendStatus(500)
        }
    },
    getWishlist: async (req, res) => {
        console.log('hit getwish')
        console.log(req.session)
        if (!req.session.user.user_id) {
            return res.status(400)
        }
        let { user_id } = req.session.user
        const db = req.app.get('db')

        // try {
        let wishlist = await db.get_wishlist([user_id])
        if (wishlist) {
            return res.status(200).send(wishlist)
        }
        // } catch (error) {
        //     return res.sendStatus(500)
        // }
    },
    addToWishlist: async (req, res) => {
        console.log('hit addwish')
        if (!req.body.product_id || !req.session.user.user_id) {
            return res.status(400)
        }
        const db = req.app.get('db')
        let { product_id } = req.body
        let { user_id } = req.session.user

        // try {
        let wishlist = await db.get_wishlist([user_id])
        let alreadyExists = wishlist.filter(
            product => +product.product_id === +product_id
        ).length
        if (alreadyExists) {
            wishlist = await db.add_quantity({ user_id, product_id })
            return res.status(200).send(wishlist)
        } else {
            wishlist = await db.add_to_wishlist({ product_id, user_id })
            return res.status(200).send(wishlist)
        }
        // } catch (error) {
        //     return res.sendStatus(500)
        // }
    },
    subtractWishlist: async (req, res) => {
        if (!req.body.product_id || !req.session.user.user_id) {
            return res.status(400)
        }
        const db = req.app.get('db')
        let { product_id } = req.body
        let { user_id } = req.session.user

        let wishlist = await db.get_wishlist([user_id])
        wishlist = await db.subtract_quantity({ user_id, product_id })
        return res.status(200).send(wishlist)
    },
    deleteWishlist: async (req, res) => {
        console.log(req.body)
        console.log(req.session)

        if (!req.params.product_id || !req.session.user.user_id) {
            return res.sendStatus(400)
        }
        const db = req.app.get('db')
        let { product_id } = req.params
        let { user_id } = req.session.user

        let wishlist = await db.delete_wishlist({ user_id, product_id })



        return res.status(200).send(wishlist)
    },
    pay: (req, res) => {
        // const db = req.app.get('db')
        const { token: { id }, amount } = req.body;
        console.log(id, amount, stripe)
        stripe.charges.create(
            {
                amount: amount,
                currency: 'usd',
                source: id,
                description: 'Test Charge'
            },
            (err, charge) => {
                if (err) {
                    console.log(err)
                    return res.status(500).send(err)
                } else {
                    console.log('Successful payment', charge)
                    //this is where you would do something with that purchase (i.e. store that information to your db)
                    return res.status(200).send(charge)
                }
            }
        )
    }
}