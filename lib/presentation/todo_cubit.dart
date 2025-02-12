/*

TO DO CUBIT - simple state management

Each cubit is a list of todos.

*/

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/domain/models/todo.dart';
import 'package:todo_app/domain/repository/todo_repo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  // Reference todo repo
  final TodoRepo todoRepo;

  // Constructor initializes the cubit with an empty list of todos
  TodoCubit(this.todoRepo) : super([]) {
    loadTodos();
  }
  
  // L O A D
  Future<void> loadTodos() async {
    // Fetch todos from the repo
    final todos = await todoRepo.getTodos();
    
    // Emit the fetched list as the new state
    emit(todos);
  }

  // A D D
  Future<void> addTodo(String text) async {
    // Create a new todo object
    final newTodo = Todo(
      id: DateTime.now().millisecondsSinceEpoch,
      text: text,
    );

    // Add the new todo to the repo
    await todoRepo.addTodo(newTodo);

    // Load the updated list of todos
    loadTodos();
  }

  // D E L E T E
  Future<void> deleteTodo(Todo todo) async {
    // Delete the todo from the repo
    await todoRepo.deleteTodo(todo);

    // Load the updated list of todos
    loadTodos();
  }

  // T O G G L E
  Future<void> toggleCompletion(Todo todo) async {
    // Toggle the completion status of the todo
    final updatedTodo = todo.toggleCompletion();

    // Update the todo in the repo
    await todoRepo.updateTodo(updatedTodo);

    // Load the updated list of todos
    loadTodos();
  }
}