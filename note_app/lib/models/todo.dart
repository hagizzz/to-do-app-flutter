class ToDo {
  final String id;
  final String toDoText;
  final List<String> labels;
  bool isDone;

  ToDo({
    required this.id,
    required this.toDoText,
    required this.labels,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '1', toDoText: 'Learn Flutter', labels: [], isDone: false),
      ToDo(id: '2', toDoText: 'Morning Excercises', labels: [], isDone: false),
      ToDo(id: '3', toDoText: 'Check Email', labels: [], isDone: false),
      ToDo(id: '4', toDoText: 'Team Meeting', labels: [], isDone: false),
      ToDo(
          id: '5',
          toDoText: 'Work on mobie apps for 2 hour',
          labels: [],
          isDone: false),
      ToDo(id: '6', toDoText: 'Dinner with family', labels: [], isDone: false),
      ToDo(id: '7', toDoText: 'Shopping', labels: [], isDone: false),
      ToDo(id: '8', toDoText: 'Hangout with friend', labels: [], isDone: false),
    ];
  }
}
