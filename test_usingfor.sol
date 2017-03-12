pragma solidity ^0.4.0;

library search{
    function index(uint y,uint[] storage sef,uint x)returns (uint)
    {
        for(uint i=0;i<sef.length;i++)
            if(sef[i]==x)
                return i;
        return uint(-1);
    }
}
contract arr{
    uint[]add;
    using search for uint[];
    function append(uint x){
        add.push(x);
    }
    function replace(uint y,uint old,uint newx)
    {
        uint pos=add.index(old);
        if(pos==uint(-1))
            add.push(newx);
        else
            add[pos]=newx;
            
    }
    function get()constant returns(uint[])
    {
        return add;
    }
}
