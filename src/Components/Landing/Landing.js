import React from 'react'
import { Link } from 'react-router-dom'
import './Landing.css'

export default function Landing() {
    return (
        <div className="landing">
            <h1 className="landing-head-text">Welcome to PC Buddy! Please choose if you would like to build a PC, or pick from pre-built options!</h1>
            <section className="box-container">
                <Link to="/prebuild"><div className="prebuild-box">Pre-Built</div></Link>
                <Link to="/custombuild"><div className="custombuild-box">Custom Build</div></Link>
            </section>
            <section className="box-container2">
                <Link to="/wishlist"><div className="saveditems-box">Already have saved items? Click me to view your saved items.</div></Link>
            </section>
        </div>
    )
}