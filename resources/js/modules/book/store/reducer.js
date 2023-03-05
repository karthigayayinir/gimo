import {
  BOOK_LIST,
} from './action-types'

const initialState = {
  currentPage: 0,
  data: [],
  from: 0,
  lastPage: 0,
  nextPageUrl: '',
  path: '',
  perPage: 0,
  prevPageUrl: null,
  to: 0,
  total: 0,
}

const reducer = (state = initialState, { type, payload = null }) => {
  switch (type) {
    case BOOK_LIST:
      return {
        ...state,
        data: payload
      }
    default:
      return state
  }
}

export default reducer
