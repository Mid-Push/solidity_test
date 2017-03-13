pragma solidity ^0.4.0;
//测试当 没有 函数没有声明payable是否可以接收ether,发现无法接收ether
contract f{
    function add(uint a,uint b)constant returns(uint){
        return a+b;
    }
}

//测试当payable fallback function超过2300gas是否能接受ether，发现可以接收
contract f2{
    function()payable{
        f3 f=new f3();
        uint a=10+12;
        
    }
    function add(uint a,uint b)constant returns(uint){
        return a+b;
    }

}
contract f3{
    uint x;
    function()payable{
        
    }
    function add(uint a,uint b)constant returns(uint){
        return a+b;
    }
    function testpay()payable returns(uint){
        return msg.value;
    }
}
//测试没有fallback但是具有别的payable函数时是否可以接收ether， 无法接收ether 
 contract f4{
     function mul()payable{
         
     }
 }
 //测试有payable构造函数,无fallback函数时是否可以接收ether,发现无法接收ether
 contract f5{
     function f5()payable{}
 }
