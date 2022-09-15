import React from "react";

import { Container, Row, Col } from "react-bootstrap";

import NavBar from "../nav-bar";
import DeviceList from "../device-list";
import TypeBar from "../type-bar";
import BrandBar from "../brand-bar";

const MainPage = () => {

  return (
    <section>
      <NavBar />
      <Container>
        <Row className="mt-2">
          <TypeBar />
          <main className="col-md-9">
            <BrandBar />
            <DeviceList />
          </main>
        </Row>
      </Container>
    </section>
  );
};

export default MainPage;
