import React, { useLayoutEffect } from "react"
import PropTypes from "prop-types"

// import components
import Header from "./components/Header"
import Books from "../../../../common/books/listing"

// import services
import { bookListRequest } from '../../../book/service'

export default function Page({ dispatch }) {
  useLayoutEffect(() => {
    dispatch(bookListRequest({ url: 'api/v1/books' }))
  }, [])

  return <div>
    <Header />
    <Books />
  </div>
}

Page.displayName = 'HomePage'
Page.propTypes = {
  dispatch: PropTypes.func.isRequired,
}
