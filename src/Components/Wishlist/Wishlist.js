import React, { useEffect, useState } from 'react'
import { connect } from 'react-redux'
import { getWishlist, addToWishlist, subtractWishlist, deleteWishlist } from '../../ducks/reducer'
import { Redirect } from 'react-router-dom'
import axios from 'axios'
import StripeCheckout from 'react-stripe-checkout'

function Wishlist(props) {
    useEffect(() => {
        props.getWishlist()
    }, [props.userReducer.user.user_email])


    if (!props.userReducer.user.user_email) {
        return <Redirect to='/' />
    }

    if (props.reducer.loading) {
        return <h1 margin-top="150px">Loading your wishlist...</h1>
    }

    let totalPrice = props.reducer.wishlist.reduce((acc, cur) => {
        return (acc += cur.wishlist_qty * +cur.product_price)
    }, 0) * 100

    const onToken = (token) => {
        let { amount } = totalPrice
        amount /= 100
        console.log(amount)
        token.card = void 0
        axios.post('/api/payment', { token, amount: totalPrice }).then(res => {
            console.log(res)
            alert(`Congratulations you paid PC Buddy!`)
        })
    }

    const onOpened = () => {
        console.log('opened')
    }

    const onClosed = () => {
        return <Redirect to='/home' />
    }

    const imageUrl = 'https://image.freepik.com/free-vector/multimedia-desktop-pc-illustration_72147494127.jpg'

    return (
        <div className="products-list">
            <div>
                <h1>Saved Items:</h1>
                <h3>Total Cost: ${props.reducer.wishlist.reduce((acc, cur) => {
                    return (acc += cur.wishlist_qty * +cur.product_price)
                }, 0)}</h3>
                <StripeCheckout
                    name='PC Buddy' //header
                    image={imageUrl}
                    description='Please enter your information' //subtitle - beneath header
                    stripeKey={process.env.REACT_APP_STRIPE_KEY} //public key not secret key
                    token={onToken} //fires the call back
                    amount={totalPrice} //this will be in cents
                    currency="USD"
                    // image={imageUrl} // the pop-in header image (default none)
                    // ComponentClass="div" //initial default button styling on block scope (defaults to span)
                    panelLabel="Submit Payment" //text on the submit button
                    locale="en" //locale or language (e.g. en=english, fr=french, zh=chinese)
                    opened={onOpened} //fires cb when stripe is opened
                    closed={onClosed} //fires cb when stripe is closed
                    allowRememberMe // "Remember Me" option (default true)
                    billingAddress={false}
                    // shippingAddress //you can collect their address
                    zipCode={false}
                >
                    <button>Checkout</button>
                </StripeCheckout>
            </div>
            <div className="row">
                {props.reducer.wishlist.map(product => {
                    return (
                        <div key={product.product_id} className="card small">
                            <div className="section">
                                <p>{product.product_name}</p>
                            </div>
                            <img src={product.product_image} />
                            <div className="section dark">
                                <a href={product.product_link} className="button-small" target="_blank">Link to Amazon Product Page</a>
                                <p>${product.product_price}</p>
                                <p>Quantity: {product.wishlist_qty}</p>

                                <section className="wish-buttons">
                                    <button onClick={() => props.addToWishlist(product.product_id)
                                    } >Increase Quantity</button>
                                    <button onClick={() => {
                                        if (product.wishlist_qty === 1) {
                                            props.deleteWishlist(product.product_id)
                                            props.getWishlist()
                                        } else {
                                            props.subtractWishlist(product.product_id)
                                        }
                                    }
                                    } >Decrease Quantity</button>
                                </section>
                            </div>
                        </div>
                    )
                })}
            </div>
        </div>
    )
}

const mapStateToProps = reduxState => ({
    reducer: reduxState.reducer,
    userReducer: reduxState.userReducer
})

const mapDispatchToProps = {
    getWishlist,
    addToWishlist,
    subtractWishlist,
    deleteWishlist
}

export default connect(mapStateToProps, mapDispatchToProps)(Wishlist)