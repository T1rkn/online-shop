import React from "react";

const NavBar = () => {
  const isAuth = true

  return (
    <header>
      <nav className="navbar navbar-expand-lg bg-light">
        <div className="container">
          <a className="navbar-brand" href="#">{"< By Device >"}</a>
          {isAuth ?
            <nav className="ml-auto navbar-nav">
              <button type="button" className="btn btn-outline-dark me-1">Admin panel</button>
              <button type="button" className="btn btn-outline-dark">Exit</button>
            </nav>
            :
            <nav className="ml-auto navbar-nav">
              <button type="button" className="btn btn-outline-dark me-1">Login</button>
            </nav>
          }
        </div>
      </nav>
    </header>
  );
};

export default NavBar;