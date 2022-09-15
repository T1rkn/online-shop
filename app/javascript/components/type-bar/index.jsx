import React, { useState } from "react";
import { ListGroup } from "react-bootstrap";

const TypeBar = () => {

  const [tp, setTp] = useState([]);

  const dataType = [
    {id: 1, name: "Холодильники"},
    {id: 2, name: "Смартфоны"},
    {id: 3, name: "Кондиционеры"},
    {id: 4, name: "Телевизоры"},
    {id: 5, name: "Аксессуары"},
  ];

  return (
    <aside className="col-md-3">
      <ListGroup>
        {dataType.map(type => 
          <ListGroup.Item
            style={{cursor: "pointer"}}
            key={type.id}
            active={type.id === tp.id}
            onClick={() => setTp(type)}
          >
            {type.name}
          </ListGroup.Item>
        )}
      </ListGroup>
    </aside>
  )
}

export default TypeBar;
