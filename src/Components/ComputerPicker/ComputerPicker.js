import React, { useState, useEffect } from 'react'
import Axios from 'axios'
// import './ComputerPicker.css'
import { connect } from 'react-redux'
import { addToWishlist } from '../../ducks/reducer'

function ComputerPicker(props) {

    const [products, setProducts] = useState([])

    useEffect(() => {
        Axios.get(`/api/products`).then(res => {
            setProducts(res.data)
        }).catch(err => {
            console.log(err)
        })
    })

    const preBuildMapper = products.filter((e) => {
        return e.product_category === "prebuild"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="section">
                    <p>{product.product_name}</p>
                </div>
                <img src={product.product_image} />
                <div className="section dark">
                    <p>${product.product_price}</p>
                    <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                </div>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    return (
        <div className="products-list">
            <h1 className="category-header">Pre-Build's:</h1>
            <div className="row">
                {preBuildMapper}
            </div>
        </div>
    )
}

export default connect(null, { addToWishlist })(ComputerPicker)