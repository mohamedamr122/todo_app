import 'package:flutter/material.dart';

class TodosWidget extends StatelessWidget {
  const TodosWidget({super.key, required this.todos});
  final List todos;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(todos[index].id.toString()),
            ),
            title: Text(todos[index].title),
            trailing: todos[index].completed
                ? const Icon(
                    Icons.done,
                    color: Colors.green,
                  )
                : null,
          ),
        );
      },
    );
  }
}
