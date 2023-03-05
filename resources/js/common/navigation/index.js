// import libs
import React, { Component } from 'react'
import PropTypes from 'prop-types'
import { connect } from 'react-redux'
import { logout } from '../../modules/auth/service'

// import components
import { Link } from 'react-router-dom'
import { Navbar, NavbarToggler } from 'reactstrap';
import PublicHeader from './PublicHeader'

class Navigation extends Component {
  static propTypes = {
    isAuthenticated: PropTypes.bool.isRequired,
    user: PropTypes.object.isRequired,
    dispatch: PropTypes.func.isRequired,
  }

  constructor(props) {
    super(props)

    this.state = {
      showNavigation: false,
      showDropdown: false,
    }
  }

  toggleNavbar = () => {
    this.setState({
      showNavigation: !this.state.showNavigation,
    });
  }

  toggleDropdown = () => {
    this.setState({
      showDropdown: !this.state.showDropdown,
    })
  }

  logout = e => {
    e.preventDefault()

    this.props.dispatch(logout())
  }

  render() {
    return (
      <Navbar className="navbar navbar-expand-md navbar-dark bg-primary fixed-top">
        <Link to="/" className="navbar-brand">GIMO Books</Link>
        <NavbarToggler className="navbar-toggler d-lg-none" onClick={this.toggleNavbar} />
        <PublicHeader showNavigation={this.state.showNavigation} />
      </Navbar>
    )
  }
}

const mapStateToProps = state => {
  return {
    isAuthenticated: state.auth.isAuthenticated,
    user: state.user
  }
}

export default connect(mapStateToProps)(Navigation)
