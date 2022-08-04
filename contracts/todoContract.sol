// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.15;


contract todo{
    struct todoItem {
        string name;
        uint  rollNo;
        address id;
    }   
   
    todoItem []  todoList;
mapping (address=>todoItem) public todoMap;


function addTodo(string memory _name,uint _rollNo, address _id) public{
    todoList.push(todoItem({
        name:_name,
        rollNo:_rollNo,
        id:_id
    }));
}
function updateTodo(uint index, string memory _name, uint _rollNo, address _id)public{
    todoList[index].name = _name;
    todoList[index].rollNo = _rollNo;
    todoList[index].id = _id;
      
}

function viewTodo(uint index) public view returns(string memory, uint,  address){
    return (todoList[index].name,todoList[index].rollNo,todoList[index].id);
}

function deleteTodo(uint index)public{
    delete todoList[index].name;
    delete todoList[index].rollNo;
    delete todoList[index].id;
 
}
function deleteAll()public{
    delete todoList;

}
function viewAll() public view returns(todoItem [] memory){
        return todoList; 
    }
function addTodoByMapping(string memory _name, uint _rollNo , address _id)public{
   todoList.push( todoMap[_id]=todoItem({
        name:_name,
        rollNo:_rollNo,
        id:_id
    })
   );
}

}






