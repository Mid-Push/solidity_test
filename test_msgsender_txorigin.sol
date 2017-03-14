pragma solidity ^0.4.0;
//0x24941f6d918443783a7FdbD14076942A5cE22140
contract a{
    uint x=0;
    function()payable{}
    function add(){
        x++;
    }
    function getbal(uint)constant returns(uint){
        return this.balance;
    }
    function getx()constant returns(uint){
        return x;
    }
    function getmsgsender()returns(address){
        return msg.sender;
    }
    function gettxorigin()returns(address){
        return tx.origin;
    }
}
contract b{
    uint public rec;
    function test(){
        rec=a(msg.sender).getx();
    }
    
    
}
contract c{
    address addr=0x24941f6d918443783a7FdbD14076942A5cE22140;
    uint public rec;
    function test(){
        rec=a(addr).getx();
    }
    
}
contract d{
    address addr=0x24941f6d918443783a7FdbD14076942A5cE22140;
    uint public rec;
    address public msgsender;
    address public outsidemsgsender;
    address public txorigin;
    address public othertxorigin;
    function test(){
        rec=a(addr).getx();
    }
    //test function of msgsender within contract
    function msgsender()returns(address){
        msgsender=msg.sender;
    }
    //test function of msgsender outside contract
    function testoutsidemsgsender(address){
        outsidemsgsender=a(addr).getmsgsender();
    }
    function testtxorigin()returns(address){
        txorigin=a(addr).gettxorigin();
        othertxorigin=a(msg.sender).gettxorigin();
    }
    
}
contract e{
    address addr=0x24941f6d918443783a7FdbD14076942A5cE22140;
    uint public rec;
    address public  sender;
    address public outsidemsgsender;
    address public txorigin;
    address public othertxorigin;
    function test(){
        rec=a(addr).getx();
    }
    //test function of msgsender within contract
    function msgsender(){
        sender=msg.sender;
    }
    //test function of msgsender outside contract
    function testoutsidemsgsender(address){
        outsidemsgsender=a(addr).getmsgsender();
    }
    function testtxorigin(){
        txorigin=a(addr).gettxorigin();
        
    }
    function testotherorigin(){
        othertxorigin=a(msg.sender).gettxorigin();
    }
    
}
