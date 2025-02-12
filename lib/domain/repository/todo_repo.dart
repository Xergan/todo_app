/*

TO DO REPOSITORY

Here you define what the app can do.

*/

import 'package:todo_app/domain/models/todo.dart';

abstract class TodoRepo {
  // get list of todos
  Future<List<Todo>> getTodos();
  // add a new todo
  Future<void> addTodo(Todo newTodo);

  // update a todo
  Future<void> updateTodo(Todo todo);

  // delete a todo
  Future<void> deleteTodo(Todo todo);
}

/*

Notes:

- The repo in the domain layer outlines what operations the app can do, but doesn't worry
about the specific implementation details. That's for the data layer.

- Technology agnostic: independent of any technology or framework.

*/