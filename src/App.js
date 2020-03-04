import React from 'react'
import { withRouter } from 'react-router-dom'
import Auth from './Components/Auth/Auth'
import Header from './Components/Header/Header'
import routes from './routes'
import './App.css';

function App(props) {
  return (
    <div className="App">
      {props.location.pathname === '/' ? (
        <div>
          <Auth />
        </div>
      ) : (
          <div>
            <Header />
            {routes}
          </div>
        )
      }
    </div>
  )
}

export default withRouter(App)