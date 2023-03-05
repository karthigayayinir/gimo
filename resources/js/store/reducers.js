import { combineReducers } from 'redux'

import auth from '../modules/auth/store/reduer'
import user from '../modules/user/store/reducer'
import books from '../modules/book/store/reducer'

export default combineReducers({ auth, user, books })
