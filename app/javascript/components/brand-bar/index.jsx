import React from "react";
import { Card } from "react-bootstrap";

const BrandBar = () => {
  const brandsDada = [
    {id: 1, name: "ALL"},
    {id: 2, name: "Samsung"},
    {id: 3, name: "Lenovo"},
    {id: 4, name: "LG"},
    {id: 5, name: "Apple"},
  ];

  return (
    <div className="d-flex flex-wrap">
      {brandsDada.map(brand =>
        <Card
          style={{cursor: "pointer"}}
          key={brand.id}
          className="p-3 m-1"
          // border={brand.id === device.selectedBrand.id ? "danger" : "light"}
        >
          {brand.name}
        </Card>
      )}
    </div>
  );
};

export default BrandBar;