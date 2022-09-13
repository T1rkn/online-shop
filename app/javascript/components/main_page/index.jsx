import React from "react";

const MainPage = ({devices}) => {
  console.log(devices);
  return (
    <h1 className="hello">{devices}</h1>
  );
};

export default MainPage;