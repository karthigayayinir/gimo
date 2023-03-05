import Model from '../../utils/Model'

class Book extends Model {
  constructor(props) {
    super(props)

    this.initialize(props)
  }

  initialize(props) {
    super.initialize(props)

    this.author = props.author || ''
    this.title = props.title || ''
    this.description = props.description || ''
    this.publication_year = props.publicationYear || ''
  }
}

export default Book
