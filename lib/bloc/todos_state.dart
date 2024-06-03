part of 'todos_bloc.dart';

@immutable
sealed class TodosState {}

class LoadingState extends TodosState {}

class LoadedState extends TodosState {
  final List<Todo> todos;
  LoadedState({required this.todos});
}

class ErrorState extends TodosState {
  final String message;

  ErrorState({required this.message});
}
