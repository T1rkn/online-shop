import React from "react";
import DeviceItem from "./DeviceItem";

const DeviceList = () => {
  const devices = [
    {id: 1, name: "Smartphone", rating: 3.7},
    {id: 2, name: "TV", rating: 5},
    {id: 3, name: "Air conditioner", rating: 2.5},
    {id: 4, name: "Fridge", rating: 3.5},
    {id: 5, name: "Headphons", rating: 4.4},
    {id: 6, name: "Molotok", rating: 3.8},
  ];

  return (
    <div className="d-flex row">
      {devices.map(device => 
        <DeviceItem key={device.id} device={device} />
      )}
    </div>
  )
}

export default DeviceList;