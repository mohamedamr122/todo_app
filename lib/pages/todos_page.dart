import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/bloc/todos_bloc.dart';
import 'package:todo_app/widgets/loading_widget.dart';
import 'package:todo_app/widgets/todos_widget.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos App'),
        centerTitle: true,
      ),
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is LoadedState) {
            return TodosWidget(todos: state.todos);
          } else if (state is ErrorState) {
            return ErrorWidget('There is an error');
          } else {
            return LoadingWidget();
          }
        },
      ),
    );
  }
}
