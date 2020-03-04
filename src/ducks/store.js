import { createStore, applyMiddleware, combineReducers } from 'redux'
import promiseMiddleware from 'redux-promise-middleware'
import userReducer from './userReducer'
import reducer from './reducer'

const rootReducer = combineReducers({
    userReducer,
    reducer
})

export default createStore(rootReducer, applyMiddleware(promiseMiddleware))