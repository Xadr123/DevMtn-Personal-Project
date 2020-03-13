import React from 'react'
import { Link } from 'react-router-dom'
// import './Landing.css'

export default function Landing(props) {

    console.log(props)
    return (

        <div className="container">
            <div className="row">
                <div className="col-sm">
                    <h4>Welcome to PC Buddy! The app to help you find compatible parts for a custom PC build, or find the perfect pre-built PC just for you!</h4>
                </div>
            </div>
            <div className="row">
                <Link to="/custombuild">
                    {/* <div className="col-sm-10 col-lg-10"> */}
                    <div className="card large">
                        <div className="section dark">
                            <h4>Parts Builder</h4>
                        </div>
                        <img src="https://img.pngio.com/png-computer-parts-transparent-images-4157-pngio-png-of-computer-parts-591_445.png" />
                    </div>
                    {/* </div> */}
                </Link>
                <Link to="/prebuild">
                    {/* <div className="col-sm-10 col-lg-10"> */}
                    <div className="card large">
                        <div className="section dark">
                            <h4>Pre-Built PC's</h4>
                        </div>
                        <img src="https://i0.wp.com/www.technugget.net/wp-content/uploads/2019/01/pc2.png?fit=904%2C922&ssl=1" />
                    </div>
                    {/* </div> */}
                </Link>
                <Link to="/wishlist">
                    {/* <div className="col-sm-10 col-lg-10"> */}
                    <div className="card large">
                        <div className="section dark">
                            <h4>Saved Items</h4>
                        </div>
                        <img src="https://cdn0.iconfinder.com/data/icons/elasto-online-store/26/00-ELASTOFONT-STORE-READY_star-512.png" />
                    </div>
                    {/* </div> */}
                </Link>
            </div>
        </div>
    )
}