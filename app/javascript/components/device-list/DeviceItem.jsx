import React from "react";
import { Col, Card, Image } from "react-bootstrap";
import star from "../../../assets/images/star.svg"

const DeviceItem = ({device}) => {
  return (
    <Col md={3} className="mt-3">
      <Card style={{width: 150, cursor: "pointer"}} border={"light"}>
        <Image width={150} height={150} src={"https://stevedesign.com.pl/wp-content/uploads/revslider/home1/150x150.gif"} />
        <div className="text-black-50 mt-1 d-flex justify-content-between align-items-center">
          <div>Samsung...</div>
          <div className="d-flex align-items-center">
            <div>{device.rating}</div>
            <Image width={13} height={13} src={star} />
          </div>
        </div>
        <div>{device.name}</div>
      </Card>
    </Col>
  )
}

export default DeviceItem;