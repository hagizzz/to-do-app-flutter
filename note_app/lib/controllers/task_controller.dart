import 'package:get/get.dart';
import 'package:note_app/models/todo.dart';

class TaskController extends GetxController {
  final todosList = ToDo.todoList().obs;
  var searchText = "".obs;

// Function to handle the task status change
  void handleToDoChange(ToDo todo) {
    todo.isDone = !todo.isDone;
    todosList.refresh();
  }

// Function to handle the search text
  void handleKeyword(String value) {
    searchText.value = value;
  }

// Function to delete a task
  void deleteToDoItem(String id) {
    todosList.removeWhere((item) => item.id == id);
  }

// Function to add a new task
  void addToDoItem(String toDo) {
    todosList.add(
      ToDo(id: '1', toDoText: toDo, labels: []),
    );
  }

// Function to reorder the tasks
  void onReorder(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final ToDo todo = todosList.removeAt(oldIndex);
    todosList.insert(newIndex, todo);
  }

  // Computed function,
  // returns a list of tasks that contain the search text
  List<ToDo> filteredToDos() {
    return todosList
        .where((task) =>
            task.toDoText.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }
}
