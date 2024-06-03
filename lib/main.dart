import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/api/todos_api.dart';
import 'package:todo_app/bloc/todos_bloc.dart';
import 'package:todo_app/pages/todos_page.dart';

void main() {
  runApp(const TodosApp());
}

class TodosApp extends StatelessWidget {
  const TodosApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TodosBloc(todosApi: TodosApi())..add(GetAllTodosEvents()),
      child: const MaterialApp(
        title: 'Todos App',
        debugShowCheckedModeBanner: false,
        home: TodosPage(),
      ),
    );
  }
}
