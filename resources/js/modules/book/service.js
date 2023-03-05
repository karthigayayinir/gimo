import Http from '../../utils/Http'
import Transformer from '../../utils/Transformer'
import * as bookActions from './store/actions'

function transformResponse(params) {
  return Transformer.fetch(params)
}

export function bookListRequest(params) {
  let { url = 'api/v1/books', searchTerm = '' } = params

  return dispatch => {
    if (searchTerm) {
      url = url + `?q=${searchTerm}`
    }

    Http.get(url)
      .then((res) => {
        dispatch(bookActions.list(transformResponse(res.data)))
      })
      .catch((err) => {
        // TODO: handle err
        console.error(err.response)
      })
  }
}
