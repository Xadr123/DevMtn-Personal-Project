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
        <div>
            <header className="sticky">
                <a href="#/home" className="logo">PC Buddy</a>
                <span>|</span>
                <a href="#/custombuild" className="button">PC Builder</a>
                <span>|</span>
                <a href="#/prebuild" className="button">Pre-Built PC's</a>
                <span>|</span>
                <a href="#/wishlist" className="button">Wishlist</a>
            </header>
            <h5>Logged in as: {props.user_email}
                <small onClick={() => {
                    props.logout()
                }}>Not you? Click here to log out.</small></h5>
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