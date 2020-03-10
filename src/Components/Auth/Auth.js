import React, { useState, useEffect } from 'react'
import { connect } from 'react-redux'
import { register, login, logout } from '../../ducks/userReducer'
import { Link } from 'react-router-dom'
import AuthErrors from './AuthErrors'
// import './Auth.css'


function Auth(props) {
    const [registered, setRegistered] = useState(false)
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')

    useEffect(() => {
        if (props.userReducer.user.user_email) {
            props.history.push('/home')
        }
    }, [props.userReducer])

    return (
        <div>
            <div className="login-box">
                {!registered ? (
                    <div>
                        <div className="col-sm-offset-2 col-md-offset-4 col-lg-offset-5">
                            <h1>Welcome to PC Buddy!<small>Please Log In to get started.</small></h1>
                        </div>
                        <form
                            onSubmit={(e) => {
                                e.preventDefault();
                                props.login(email, password)
                                setEmail('')
                                setPassword('')
                            }}
                        ><fieldset>
                                <legend>Sign In</legend>
                                <div className="input-group row vertical">
                                    <div className="col-sm-offset-2 col-sm-12 col-md-offset-4 col-lg-offset-5">
                                        <label for="email">Email: </label>
                                        <input
                                            type="email"
                                            placeholder="Email"
                                            id="email"
                                            value={email}
                                            onChange={(e) => {
                                                setEmail(e.target.value)
                                            }}
                                        />
                                    </div>
                                    <div className="col-sm-offset-2 col-md-offset-4 col-lg-offset-5">
                                        <label for="password">Password: </label>
                                        <input
                                            type="password"
                                            placeholder="Password"
                                            id="password"
                                            value={password}
                                            onChange={(e) => {
                                                setPassword(e.target.value)
                                            }}
                                        />
                                    </div>
                                    <div className="col-sm-offset-2 col-md-offset-4 col-lg-offset-5">
                                        <button>Log-in</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                ) : (
                        <div>
                            <div className="col-sm-offset-2 col-md-offset-4 col-lg-offset-5">
                                <h1>Welcome to PC Buddy!<small>Please Register to get started.</small></h1>
                            </div>
                            <form
                                onSubmit={(e) => {
                                    e.preventDefault();
                                    props.register(email, password)
                                    setEmail('')
                                    setPassword('')
                                }}
                            ><fieldset>
                                    <legend>Sign Up</legend>
                                    <div className="input-group vertical">
                                        <div className="col-sm-offset-2 col-sm-12 col-md-offset-4 col-lg-offset-5">

                                            <label for="email">Email: </label>

                                            <input
                                                type="email"
                                                placeholder="Email"
                                                id="email"
                                                value={email}
                                                onChange={(e) => {
                                                    setEmail(e.target.value)
                                                }}
                                            />
                                        </div>
                                        <div className="col-sm-offset-2 col-md-offset-4 col-lg-offset-5">
                                            <label for="password">Password: </label>
                                            <input
                                                type="password"
                                                placeholder="Password"
                                                id="password"
                                                value={password}
                                                onChange={(e) => {
                                                    setPassword(e.target.value)
                                                }}
                                            />
                                        </div>
                                        <div className="col-sm-offset-2 col-md-offset-4 col-lg-offset-5">
                                            <button>Register</button>
                                        </div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    )}
                {!registered ? (
                    <div className="col-sm-offset-3 col-md-offset-4 col-lg-offset-5">
                        <section>
                            <button onClick={() => {
                                setRegistered(true)
                            }}>
                                Don't have an account?<br />Register here!
                    </button>
                        </section>
                    </div>
                ) : (
                        <div className="col-sm-offset-3 col-md-offset-4 col-lg-offset-5">
                            <section>
                                <button onClick={() => {
                                    if (registered) {
                                        setRegistered(false)
                                    }
                                }}>
                                    Already have an account?<br />Login here!
                        </button>
                            </section>
                        </div>
                    )}
            </div>
            <AuthErrors />
        </div>
    )
}

const mapStateToProps = reduxState => {
    return {
        userReducer: reduxState.userReducer
    }
}

export default connect(mapStateToProps, { register, login, logout })(Auth)