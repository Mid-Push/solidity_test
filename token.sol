pragma solidity ^0.4.0;

contract token{
    Tokencreator tc;
    address owner;
    string name;
    function token(string _name)
    {
        tc=Tokencreator(msg.sender);
        owner=msg.sender;
        name=_name;
    }
    function changename(string _name)returns(bool){
        if(msg.sender!=owner)
            return false;
        name=_name;
        return true;
    }
    function transfer(address addr)
    {
        if(tc.istransfer(addr))
            owner=addr;
    }
    function getname()constant returns (string){
        if (msg.sender==owner)
            return name;
        return "failed";
    }
    function getowner()constant returns(address){
        return owner;
    }
    
}
contract Tokencreator{
    token public mytoken;
    function createtoken(string _name) returns (address)
    {
        mytoken=new token(_name);
        mytoken.getname();
        return mytoken;
    }
    function istransfer(address addr) returns (bool){
        return true;
    }
    function gettokenname()  constant returns(string){
        mytoken.getname();
        
    }
}
