import React, { useEffect } from 'react'
import { connect } from 'react-redux'
import { getWishlist, addToWishlist, subtractWishlist, deleteWishlist } from '../../ducks/reducer'
import { Redirect } from 'react-router-dom'
// import '../ComputerPicker/ComputerPicker.css'

function Wishlist(props) {
    useEffect(() => {
        props.getWishlist()
    }, [props.userReducer.user])

    if (!props.userReducer.user.user_email) {
        return <Redirect to='/' />
    }

    if (props.reducer.loading) {
        return <h1 margin-top="150px">Loading your wishlist...</h1>
    }

    return (
        <div className="products-list">
            <div>
                <h1>Saved Items:</h1>
                <h3>Total Cost: ${props.reducer.wishlist.reduce((acc, cur) => {
                    return (acc += cur.wishlist_qty * +cur.product_price)
                }, 0)}</h3>
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