import React from 'react';
import { Link } from 'react-router-dom';

const SideMenu = () => {
  return (
    <div className="side-menu">
      <h3>Side Menu</h3>
      <ul>
        <li><Link to="/">Home</Link></li>
        <li><Link to="/about">About</Link></li>
        <li><Link to="/contact">Contact</Link></li>
        <li><Link to="/contact2">Contact2</Link></li>
      </ul>
    </div>
  );
}

export default SideMenu;
