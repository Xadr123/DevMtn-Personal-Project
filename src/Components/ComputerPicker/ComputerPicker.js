import React, { useState, useEffect } from 'react'
import Axios from 'axios'
import './ComputerPicker.css'

export default function ComputerPicker(props) {

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
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button>Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    return (
        <div className="products-list">
            <h1 className="category-header">Pre-Build's:</h1>
            {preBuildMapper}
        </div>
    )
}
