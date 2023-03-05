import React, { useState } from "react"
import { useDispatch } from 'react-redux'
import { bookListRequest } from '../../../../book/service'

export default function Header() {
  const [searchTerm, setSearchTerm] = useState('');
  const dispatch = useDispatch();
  return (
    <div className="container py-3">
      <div className="row">
        <div className="col-md-12">
          <div className="row">
            <div className="mx-auto">
              <div className="input-group mb-3">
                <input key="searchTerm" required type="text" onChange={e => setSearchTerm(e.target.value)} placeholder="Search term" className="form-control" aria-label="Text input with dropdown button" />
                <div className="input-group-append">
                  <button onClick={() => dispatch(bookListRequest({ url: 'api/v1/books', searchTerm }))} className="btn btn-outline-secondary" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

Header.displayName = 'HomePageHeader'
