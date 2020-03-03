import React from 'react'
import { Switch, Route } from 'react-router-dom'
import Auth from './Components/Auth/Auth'
import Landing from './Components/Landing/Landing'
import Wishlist from './Components/Wishlist/Wishlist'
import ComputerPicker from './Components/ComputerPicker/ComputerPicker'
import ComputerBuilder from './Components/ComputerBuilder/ComputerBuilder'

export default (
    < Switch >
        <Route exact path='/' component={Auth} />
        <Route path='/custombuild' component={ComputerBuilder} />
        <Route path='/prebuild' component={ComputerPicker} />
        <Route path='/wishlist' component={Wishlist} />
        <Route path='/home' component={Landing} />
    </Switch >
)