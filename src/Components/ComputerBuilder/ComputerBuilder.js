import React, { useState, useEffect } from 'react'
import Axios from 'axios'
import './ComputerBuilder.css'
import { connect } from 'react-redux'
import { addToWishlist } from '../../ducks/reducer'
import Product from '../Product/Product'

function ComputerBuilder(props) {


    const [products, setProducts] = useState([])

    useEffect(() => {
        Axios.get(`/api/products`).then(res => {
            setProducts(res.data)
        }).catch(err => {
            console.log(err)
        })
    })

    const caseMapper = products.filter((e) => {
        return e.product_category === "case"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    const motherboardMapper = products.filter((e) => {
        return e.product_category === "motherboard"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    const cpuMapper = products.filter((e) => {
        return e.product_category === "cpu"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    const ramMapper = products.filter((e) => {
        return e.product_category === "ram"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    const gpuMapper = products.filter((e) => {
        return e.product_category === "gpu"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    const psuMapper = products.filter((e) => {
        return e.product_category === "psu"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
                    </section>
                </section>
                {/* <section className="bottom-card">
                    <p>{product.product_description}</p>
                </section> */}
            </div>
        )
    })

    const osMapper = products.filter((e) => {
        return e.product_category === "os"
    }).map((product) => {
        return (
            <div className="product-card">
                <img src={product.product_image} className="product-image" />
                <section className="top-card">
                    <p className="product-name">{product.product_name}</p>
                    <section>
                        <p>${product.product_price}</p>
                        <button onClick={() => props.addToWishlist(product.product_id)} >Save Item</button>
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
            <h1 className="category-header">Cases:</h1>
            {caseMapper}
            <h1 className="category-header">Motherboards:</h1>
            {motherboardMapper}
            <h1 className="category-header">CPU's:</h1>
            {cpuMapper}
            <h1 className="category-header">RAM:</h1>
            {ramMapper}
            <h1 className="category-header">GPU's:</h1>
            {gpuMapper}
            <h1 className="category-header">POWER SUPPLY'S:</h1>
            {psuMapper}
            <h1 className="category-header">OPERATING SYSTEM:</h1>
            {osMapper}
        </div>
    )
}

export default connect(null, { addToWishlist })(ComputerBuilder)