import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:todo_app/models/todos_model.dart';

class TodosApi {
  Future getAllTodos() async {
    try {
      String url = 'https://jsonplaceholder.typicode.com/todos/1';
      Response response = await http.get(Uri.parse(url));
      List<Todo> todos = (json.decode(response.body))
          .map<Todo>((jsonTodo) => Todo.fromJson(jsonTodo)).toList();
      return todos;
    } catch (e) {
      rethrow;
    }
  }
}
