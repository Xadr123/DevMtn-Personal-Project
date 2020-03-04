import React, { Component } from 'react'
import { connect } from 'react-redux'
import { ToastContainer, toast } from "react-toastify"
import 'react-toastify/dist/ReactToastify.css'

class AuthErrors extends Component {
    render() {

        if (this.props.userReducer.error)
            toast.error(`${this.props.userReducer.errorMessage}`, {
                position: toast.POSITION.BOTTOM_RIGHT
            })
        return (
            <div>
                <ToastContainer autoClose={4000} />
            </div>
        )
    }
}

const mapStateToProps = reduxState => {
    return {
        userReducer: reduxState.userReducer
    }
}


export default connect(mapStateToProps)(AuthErrors)