import axios from 'axios'

const initialState = {
    wishlist: [],
    loading: false,
    error: false,
    errorMessage: ''
}

const ADD_TO_WISHLIST = 'ADD_TO_WISHLIST'
const GET_WISHLIST = 'GET_WISHLIST'
const SUBTRACT_WISHLIST = 'SUBTRACT_WISHLIST'
const DELETE_WISHLIST = 'DELETE_WISHLIST'

export function addToWishlist(product_id) {
    let action = {
        type: ADD_TO_WISHLIST,
        payload: axios.post(`/api/wishlist`, { product_id })
    }

    return action
}

export function subtractWishlist(product_id) {
    let action = {
        type: SUBTRACT_WISHLIST,
        payload: axios.post(`/api/wishlist/subtract`, { product_id })
    }

    return action
}

export function deleteWishlist(product_id) {
    let action = {
        type: DELETE_WISHLIST,
        payload: axios.delete(`/api/wishlist/${product_id}`)
    }

    return action
}

export function getWishlist() {
    let action = {
        type: GET_WISHLIST,
        payload: axios.get(`/api/wishlist`)
    }

    return action
}

export default function wishlistReducer(state = initialState, action) {
    switch (action.type) {
        case ADD_TO_WISHLIST + '_PENDING':
            return { ...state, loading: true, error: false, errorMessage: '' }
        case ADD_TO_WISHLIST + '_REJECTED':
            return { ...state, loading: false, error: true, errorMessage: action.payload.response }
        case ADD_TO_WISHLIST + '_FULFILLED':
            return { ...state, wishlist: action.payload.data, loading: false, error: false }
        case GET_WISHLIST + '_PENDING':
            return { ...state, loading: true, error: false, errorMessage: '' }
        case GET_WISHLIST + '_REJECTED':
            return { ...state, loading: false, error: true, errorMessage: action.payload.response }
        case GET_WISHLIST + '_FULFILLED':
            return { ...state, wishlist: action.payload.data, loading: false, error: false }
        case SUBTRACT_WISHLIST + '_PENDING':
            return { ...state, loading: true, error: false, errorMessage: '' }
        case SUBTRACT_WISHLIST + '_REJECTED':
            return { ...state, loading: false, error: true, errorMessage: action.payload.response }
        case SUBTRACT_WISHLIST + '_FULFILLED':
            return { ...state, wishlist: action.payload.data, loading: false, error: false }
        case DELETE_WISHLIST + '_PENDING':
            return { ...state, loading: true, error: false, errorMessage: '' }
        case DELETE_WISHLIST + '_REJECTED':
            return { ...state, loading: false, error: true, errorMessage: action.payload.response }
        case DELETE_WISHLIST + '_FULFILLED':
            return { ...state, wishlist: action.payload.data, loading: false, error: false }
        default:
            return state;
    }
}