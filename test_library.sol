pragma solidity ^0.4.0;

 library set{
     struct Data{mapping(uint=>bool)flags;} 
     //library可以看做是一个base contract任何合约均可使用他，并且当做她的derived contract这么使用它的成员，比如可以直接set.Data know; know.flags[2]=10;这样设置。
     function insert(Data storage self,uint x)returns(bool){ //这个self必须是storage的，通过这样将原来的数组的地址传过来而不是拷贝，这也是之前的c++的修改数组也需要传递引用
         if(self.flags[x])
            return false;
        self.flags[x]=true;
        return true;
         
     }
     function remove(Data storage self,uint x)returns(bool){
         if(!self.flags[x])
            return false;
        self.flags[x]=false;
        return true;
     }
     function contains(Data storage self,uint x)returns(bool){
         return self.flags[x];
     }
 }
 contract c{
     set.Data know; //可以这样初始化Data,
     uint[] x;  //storage数组声明在函数外
     function register(uint x)returns(bool){
        //return know.flags[2];   
        return set.insert(know,x);
     }
     function update() returns(uint){
         for(uint i=0;i<=100;i++)
            if(know.flags[i])
                x.push(i);
            
        return x.length;
                
     }
     function count() constant returns(uint[]){
        return x;
     }
     

 }
