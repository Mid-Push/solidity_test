pragma solidity ^0.4.0;

contract A
{
    uint x=0;
    function()payable{
        x++;
    }
    function getx() constant returns(uint)
    {
        return x;
    }
    function getbalance()returns(uint)
    {
        return this.balance;
    }
}
