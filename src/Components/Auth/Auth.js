import React, { useState } from 'react'
import { connect } from 'react-redux'
import { register, login, logout } from '../../ducks/userReducer'
import { Link } from 'react-router-dom'
import AuthErrors from './AuthErrors'


function Auth(props) {
    const [registered, setRegistered] = useState(false)
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')

    return (
        <div className="login-page">
            <div className="login-box">
                {!registered ? (
                    <div>
                        <p>
                            Welcome to PC Buddy!<br />Please Log In to get started.
                    </p>
                        <form
                            className="login-form"
                            onSubmit={(e) => {
                                e.preventDefault();
                                props.login(email, password)
                                setEmail('')
                                setPassword('')
                            }}
                        >
                            <input
                                type="email"
                                placeholder="Email"
                                value={email}
                                onChange={(e) => {
                                    setEmail(e.target.value)
                                }}
                            />
                            <input
                                type="password"
                                placeholder="Password"
                                value={password}
                                onChange={(e) => {
                                    setPassword(e.target.value)
                                }}
                            />
                            <button>Login</button>
                        </form>
                    </div>
                ) : (
                        <div>
                            <p>
                                Welcome to PC Buddy!<br />Please Register to get started.
                    </p>
                            <form
                                className="login-form"
                                onSubmit={(e) => {
                                    e.preventDefault();
                                    props.register(email, password)
                                    setEmail('')
                                    setPassword('')
                                }}
                            >
                                <input
                                    type="email"
                                    placeholder="Email"
                                    value={email}
                                    onChange={(e) => {
                                        setEmail(e.target.value)
                                    }}
                                />
                                <input
                                    type="password"
                                    placeholder="Password"
                                    value={password}
                                    onChange={(e) => {
                                        setPassword(e.target.value)
                                    }}
                                />
                                <button>Register</button>
                            </form>
                        </div>
                    )}
                {!registered ? (
                    <section>
                        <button onClick={() => {
                            setRegistered(true)
                        }}>
                            Don't have an account?<br />Register here!
                    </button>
                    </section>
                ) : (
                        <section>
                            <button onClick={() => {
                                if (registered) {
                                    setRegistered(false)
                                }
                            }}>
                                Already have an account?<br />Login here!
                        </button>
                        </section>
                    )}
            </div>
        </div>
    )
}

const mapStateToProps = reduxState => {
    return {
        userReducer: reduxState.userReducer
    }
}

export default connect(mapStateToProps, { register, login, logout })(Auth)