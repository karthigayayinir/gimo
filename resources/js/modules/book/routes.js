// import lib
import { lazy } from 'react'

export default [
  {
    path: '/books',
    exact: true,
    auth: true,
    component: lazy(() => import('./pages/list')),
  }
]
