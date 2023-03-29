import 'package:flutter/material.dart';
import 'package:mighty_ui_kit/to_do_demo/todo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  String todoTableName = "TODO";

  Future<Database> getDatabase() async {
    String path = await getDatabasesPath();

    String dbPath = join(path, "MyDb2.db");
    Database database = await openDatabase(
      dbPath,
      version: 2,
      onCreate: (db, version) {
        db
            .execute(
                "create table $todoTableName (id integer primary key autoincrement,title text,description text, priority integer);")
            .catchError((error) {
          debugPrint("ERROR:- $error");
        });
      },
    );
    return database;
  }

  Future<int> insertTodo(Todo todo) async {
    Database database = await getDatabase();
    int result = await database.insert(todoTableName, todo.toJson());
    return result;
  }

  Future<List<Todo>> readTodo() async {
    Database database = await getDatabase();
    List<Map> result = await database.query(
      todoTableName,
    );
    List<Todo> todoList = [];

    result.forEach((element) {
      Todo todo = Todo.fromJson(element);
      todoList.add(todo);
    });

    return todoList;
  }

  Future<int> deleteTodos() async {
    Database database = await getDatabase();
    int result = await database.delete(todoTableName);
    return result;
  }

  Future<int> deleteTodo(Todo todo) async {
    Database database = await getDatabase();
    int result = await database
        .delete(todoTableName, where: "id = ?", whereArgs: [todo.id]);
    return result;
  }

  Future<int> updateTodo(Todo todo) async {
    Database database = await getDatabase();
    int result = await database.update(todoTableName, todo.toJson(),
        where: "id = ?", whereArgs: [todo.id]);
    return result;
  }
}
