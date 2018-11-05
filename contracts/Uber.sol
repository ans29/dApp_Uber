pragma solidity ^0.4.2;

contract Uber 
{
    
    struct Driver 
    {
        uint id;
        string name;
        string lic;
        uint contactNumber;
    }

    struct RideRequest
    {
    	uint id;
    	address ip_person;
    	string source;
    	string destination;
    	uint cost;
    }

    mapping(address => uint) public driverMapping;
    mapping(address => uint) public riderMapping;
    mapping(uint => Driver) public driverData;
    uint public driverCount;
    mapping(uint => RideRequest) public requestData;
    uint public requestCount;



  	function Uber () public 
    {
        addDriver("Driver 1", "ASD12", 898958575);
        addDriver("Driver 2", "QWEE21", 123312311);
        addRequest("asd", "aws");
        addRequest("lka", "ewd");
    }


// functions related to driver

    function checkDriver () public returns (bool)
    {
    	if (driverMapping[msg.sender] > 0)
    		return true;
    	return false;
    }

    function addDriver (string _name, string _lic, uint _mob) public 
    {
        driverCount ++;
        driverMapping[msg.sender] = driverCount;
        driverData[driverCount] = Driver(driverCount, _name, _lic, _mob);
    } 



// functions related to rider

    function checkRider () public returns (bool)
    {
    	if (riderMapping[msg.sender] > 0)
    		return true;
    	return false;
    }

    function addRequest (string _src, string _dest) public
    {
    	requestCount++;
    	uint _cost = calcCost (_src, _dest);
    	requestData[requestCount] = RideRequest(requestCount, msg.sender, _src, _dest, _cost);
    }

// general functions
    function calcCost (string _src, string _dest) return (uint)
    {
    	return 100;
    }

}