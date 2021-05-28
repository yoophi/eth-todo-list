pragma solidity ^0.5.0;

contract TodoList {
    uint256 public taskCount;

    struct Task {
        uint256 id;
        string contnt;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("hello, first task!");
    }

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
