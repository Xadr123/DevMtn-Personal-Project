import React, { useEffect } from 'react'
import { Link, withRouter } from 'react-router-dom'
import { connect } from 'react-redux'
import { checkUser, logout } from '../../ducks/userReducer'
import './Header.css'

function Header(props) {

    useEffect(() => {
        if (!props.user_email) {
            props.history.push('/')
        }
    }, [props.user_email])

    return (
        <div>
            <div className="main-header">
                <section className="header-menu">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/1200px-Hamburger_icon.svg.png" className="menu-image" />
                    <p>Menu</p>
                </section>
                <h1>PC Buddy</h1>
                <section className="user-info">
                    <p>Logged in as: {props.user_email} </p>
                    <button
                        onClick={() => {
                            props.logout()
                        }}
                    >Not you? Click to logout</button>
                </section>
            </div>
            <div className="dropdown-menu">
                <Link to="/home"><p> Home</p></Link>
                <Link to="/custombuild"><p>Computer Builder</p></Link>
                <Link to="/prebuild"><p>Pre-Built Computers</p></Link>
                <Link to="/wishlist"><p>Wishlist</p></Link>
            </div>
        </div >
    )
}

const mapStateToProps = reduxState => {
    console.log(reduxState)
    const { user_email } = reduxState.userReducer.user

    return {
        user_email
    }
}

export default connect(mapStateToProps, { checkUser, logout })(withRouter(Header))