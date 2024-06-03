class Todo {
  int id;
  String title;
  bool completed;
  Todo({required this.completed, required this.id, required this.title});
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
        completed: json['completed'], id: json['id'], title: json['title']);
  }
  Map<String, dynamic> toJson(jsonTodo) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['completed'] = completed;
    data['id'] = id;
    data[' title'] = title;
    return data;
  }
}
