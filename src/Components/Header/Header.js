import React, { useEffect } from 'react'
import { Link, withRouter } from 'react-router-dom'
import { connect } from 'react-redux'
import { checkUser, logout } from '../../ducks/userReducer'
// import './Header.css'

function Header(props) {

    useEffect(() => {
        if (!props.user_email) {
            props.history.push('/')
        }
    }, [props.user_email])

    return (
        <div className="sticky">
            <header className="sticky">
                <a href="#/home" className="button">Home</a>
                <a href="#/custombuild" className="button">PC Builder</a>
                <a href="#/prebuild" className="button">Pre-Built PC's</a>
                <a href="#/wishlist" className="button">Wishlist</a>
            </header>
            <p>Logged in as: {props.user_email}</p>
            <p onClick={() => {
                props.logout()
            }}>Not you? Click here to log out.</p>
        </div >
    )
}

const mapStateToProps = reduxState => {
    const { user_email } = reduxState.userReducer.user

    return {
        user_email
    }
}

export default connect(mapStateToProps, { checkUser, logout })(withRouter(Header))