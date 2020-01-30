pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount=0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  //key value pair (uint = id of task)
  mapping(uint => Task) public tasks;

  constructor() public {
    createTask("Check out my first blockchain app");
  }

  function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }



}
