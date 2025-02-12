/*

DATABASE REPO

This implements the todo repo and handles storing, retrieving, updating, and deleting todos in the database.

*/

import 'package:isar/isar.dart';
import 'package:todo_app/data/models/isar_todo.dart';
import 'package:todo_app/domain/models/todo.dart';
import 'package:todo_app/domain/repository/todo_repo.dart';

class IsarTodoRepo implements TodoRepo {
  // database
  final Isar db;

  IsarTodoRepo(this.db);

  // get todos
  @override
  Future<List<Todo>> getTodos() async {
    // fetch from db
    final todos = db.todoIsars.where().findAll();

    // return as a list of todos and give to domain layer
    return todos.map((todoIsar) => todoIsar.toDomain()).toList();
  }

  // add todo
  @override
  Future<void> addTodo(Todo newTodo) {
    // convert todo to isar todo
    final isarTodo = TodoIsar.fromDomain(newTodo);

    // so we can store it in the database
    return db.writeAsync((db) => db.todoIsars.put(isarTodo));
  }

  // update todo
  @override
  Future<void> updateTodo(Todo todo) {
    // convert todo to isar todo
    final isarTodo = TodoIsar.fromDomain(todo);

    // so we can store it in the database
    return db.writeAsync((db) => db.todoIsars.put(isarTodo));
  }

  // delete todo
  @override
  Future<void> deleteTodo(Todo todo) async {
    await db.writeAsync((db) => db.todoIsars.delete(todo.id));
  }
}