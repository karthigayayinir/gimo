import React, { useState, useMemo } from 'react'
import DataTable from 'react-data-table-component';

const columns = [
  {
    name: 'Title',
    selector: row => row.title,
    sortable: true
  },
  {
    name: 'Author',
    selector: row => row.author,
    sortable: true
  },
  {
    name: 'Description',
    selector: row => row.description,
    sortable: true
  },
  {
    name: 'Published Year',
    selector: row => row.publication_year,
    sortable: true
  },
];

const Books = ({ books }) => {

  const [filterText, setFilterText] = useState('');
  const [filterTag, setFilterTag] = useState('Filter');
  const [resetPaginationToggle, setResetPaginationToggle] = useState(false);
  const filteredItems = (filterText.length > 2) ? books.filter(
    item => {
      if (filterTag === 'Year') {
        return (item.publication_year && item.publication_year == filterText)
      } else if (filterTag === 'Author') {
        return (item.author && item.author.toLowerCase().includes(filterText.toLowerCase()))
      } else {
        return (item.title && item.title.toLowerCase().includes(filterText.toLowerCase()) ||
          item.description && item.description.toLowerCase().includes(filterText.toLowerCase()) ||
          item.author && item.author.toLowerCase().includes(filterText.toLowerCase()))
      }
    }
  ) : books;

  const SubHeaderComponent = () => useMemo(() => {
    const handleClear = () => {
      if (filterText) {
        setResetPaginationToggle(!resetPaginationToggle);
        setFilterText('');
        setFilterTag('Filter');
      }
    };

    return (
      <div className="container">
        <div className="row">
          <div className="col-md-3">
            <div className="row">
              <div className="input-group mb-3">
                <div className="input-group-prepend">
                  <button className="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">{filterTag}</button>
                  <div className="dropdown-menu">
                    <a className="dropdown-item" href="#" onClick={() => setFilterTag('Author')}>Author</a>
                    <a className="dropdown-item" href="#" onClick={() => setFilterTag('Year')}>Year</a>
                  </div>
                </div>
                <input id="filterTerm" autoFocus onChange={e => setFilterText(e.target.value)} value={filterText} type="text" className="form-control" aria-label="Text input with dropdown button" />
                <div className="input-group-append">
                  <button onClick={handleClear} className="btn btn-outline-secondary" type="button" id="button-addon2">RESET</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  });

  return (
    <section id="components-books">
      <div className="container py-3">
        <div className="row">
          <SubHeaderComponent />
          <DataTable
            title="Book List"
            columns={columns}
            data={filteredItems}
            pagination
            paginationResetDefaultPage={resetPaginationToggle}
            persistTableHead
          />
        </div>
      </div>
    </section>)
}

export default Books
