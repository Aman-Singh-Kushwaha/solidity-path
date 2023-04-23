// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract structs{
    struct Car{
        string model; // empty string by default
        uint year;    // 0
        address owner; // 0x0000..
    }

    Car public car;
    Car[] public cars;

    function operations() external {
        Car memory buggati = Car("Chiron", 2018, msg.sender); // Acessing & Intializing struct
        
        Car memory bmw = Car({year:2010, model:"x1",owner:msg.sender});

        Car memory tesla;  // Initializing with default value
        tesla.model= "Model S";  
        tesla.year= 2021;        
        tesla.owner= msg.sender;

        cars.push(buggati); // Adding struct data to struct array
        cars.push(bmw);
        cars.push(Car("Model X", 2022, msg.sender));

        Car storage _car= cars[0];
        _car.year = 2019; // buggati chiron year 2018 -> 2019
        delete _car.owner; //resets to default value 0x00..

        delete cars[1]; //resets to defalut for whole attributes

    }
}