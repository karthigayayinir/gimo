// libs
import { connect } from 'react-redux'
import Book from '../../../modules/book/Book'

// components
import Books from './components/Books'

const mapStateToProps = state => {
  const { data, ...meta } = state.books

  return {
    books: data?.map((book) => new Book(book)),
    meta: Object.assign({}, meta)
  }
}

export default connect(mapStateToProps)(Books)
