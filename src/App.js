import React from 'react'
import { withRouter } from 'react-router-dom'
import Auth from './Components/Auth/Auth'
import Header from './Components/Header/Header'
import routes from './routes'
// import './reset.css';
// import './mini-dark.css'
// import './App.css';

function App(props) {
  return (
    <div className="App">
      {props.location.pathname === '/' ? (
        <div>
          {routes}
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