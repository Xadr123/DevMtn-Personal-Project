import React, { useEffect } from 'react'
import { connect } from 'react-redux'
import { getWishlist, addToWishlist, subtractWishlist, deleteWishlist } from '../../ducks/reducer'
import { Redirect } from 'react-router-dom'
import '../ComputerPicker/ComputerPicker.css'

function Wishlist(props) {
    // useEffect(() => {
    //     props.getWishlist()
    // }, [props.userReducer.user])

    if (!props.userReducer.user.user_email) {
        return <Redirect to='/' />
    }

    if (props.reducer.loading) {
        return <div margin-top="150px">Loading your cart...</div>
    }

    return (
        <div className="products-list">
            <div>
                <h1>Saved Items:</h1>
                <h1>Total Cost: ${props.reducer.wishlist.reduce((acc, cur) => {
                    return (acc += cur.wishlist_qty * +cur.product_price)
                }, 0)}</h1>
            </div>
            {props.reducer.wishlist.map(product => {
                return (
                    <div key={product.product_id} className="product-card">
                        <img src={product.product_image} className="product-image" />
                        <section className="top-card">
                            <p className="product-name">{product.product_name}</p>
                            <section className="bottom-card">
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
                            </section>
                        </section>
                    </div>
                )
            })}
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