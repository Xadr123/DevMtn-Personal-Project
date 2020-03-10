import React from 'react'
import { Link } from 'react-router-dom'
// import './Landing.css'

export default function Landing() {
    return (

        <div className="container">
            <div className="row">
                <div className="col-sm">
                    <h4>Welcome to PC Buddy! The app to help you find compatible parts for a custom PC build, or find the perfect pre-built PC just for you!</h4>
                </div>
            </div>
            <div className="row">
                <Link to="/custombuild">
                    <div class="col-sm-12">
                        <div class="card large">
                            <div class="section dark">
                                <h4>Parts Builder</h4>
                            </div>
                            <img src="https://img.pngio.com/birmingham-pc-repair-store-your-tech-bench-computer-component-png-1345_993.png" />
                        </div>
                    </div>
                </Link>
                <Link to="/prebuild">
                    <div class="col-sm-12">
                        <div class="card large">
                            <div class="section dark">
                                <h4>Pre-Built PC's</h4>
                            </div>
                            <img src="https://i0.wp.com/www.technugget.net/wp-content/uploads/2019/01/pc2.png?fit=904%2C922&ssl=1" />
                        </div>
                    </div>
                </Link>
                <Link to="/wishlist">
                    <div class="col-sm-12">
                        <div class="card large">
                            <div class="section dark">
                                <h4>Saved Items</h4>
                            </div>
                            <img src="https://cdn0.iconfinder.com/data/icons/elasto-online-store/26/00-ELASTOFONT-STORE-READY_star-512.png" />
                        </div>
                    </div>
                </Link>
            </div>
            <div className="row">
                <div className="col-sm">
                </div>
            </div>
        </div>
        // <div >
        //     <h1 >Welcome to PC Buddy! Please choose if you would like to build a PC, or pick from pre-built options!</h1>
        //     <section >
        //         <Link to="/prebuild"><div >Pre-Built</div></Link>
        //         <Link to="/custombuild"><div >Custom Build</div></Link>
        //     </section>
        //     <section >
        //         <Link to="/wishlist"><div >Already have saved items? Click me to view your saved items.</div></Link>
        //     </section>
        // </div>
    )
}