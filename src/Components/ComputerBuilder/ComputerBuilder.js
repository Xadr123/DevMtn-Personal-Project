import React, { useState, useEffect } from 'react'
import Axios from 'axios'
// import './ComputerBuilder.css'
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
            <div className="card small">
                <div className="top-card">
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

    const motherboardMapper = products.filter((e) => {
        return e.product_category === "motherboard"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="top-card">
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

    const cpuMapper = products.filter((e) => {
        return e.product_category === "cpu"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="top-card">
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

    const ramMapper = products.filter((e) => {
        return e.product_category === "ram"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="top-card">
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

    const gpuMapper = products.filter((e) => {
        return e.product_category === "gpu"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="top-card">
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

    const psuMapper = products.filter((e) => {
        return e.product_category === "psu"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="top-card">
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

    const osMapper = products.filter((e) => {
        return e.product_category === "os"
    }).map((product) => {
        return (
            <div className="card small">
                <div className="top-card">
                    <p>{product.product_name}</p>
                </div>
                <img src={product.product_image} height="100px" />
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
            <h1 className="category-header">Cases:</h1>
            <div className="row">
                {caseMapper}
            </div>
            <h1 className="category-header">Motherboards:</h1>
            <div className="row">
                {motherboardMapper}
            </div>
            <h1 className="category-header">CPU's:</h1>
            <div className="row">
                {cpuMapper}
            </div>
            <h1 className="category-header">RAM:</h1>
            <div className="row">
                {ramMapper}
            </div>
            <h1 className="category-header">GPU's:</h1>
            <div className="row">
                {gpuMapper}
            </div>
            <h1 className="category-header">POWER SUPPLY'S:</h1>
            <div className="row">
                {psuMapper}
            </div>
            <h1 className="category-header">OPERATING SYSTEM:</h1>
            <div className="row">
                {osMapper}
            </div>
        </div>
    )
}

export default connect(null, { addToWishlist })(ComputerBuilder)