# TodoList Smart Contract

This is a sample smart contract written in Solidity language for a simple todo list. It allows you to create tasks and mark them as completed.

## Functions

### `createTask(string memory _content)`

This function creates a new task with the given content and adds it to the todo list.

### `toggleCompleted(uint _id)`

This function toggles the completed status of a task with the given ID.

## Events

### `TaskCreated(uint id, string content, bool completed)`

This event is emitted when a new task is created.

### `TaskCompleted(uint id, bool completed)`

This event is emitted when the completed status of a task is toggled.

## License

This smart contract is licensed under the MIT License.

<hr>

made with &#128151; by "Mubashir Alam".
