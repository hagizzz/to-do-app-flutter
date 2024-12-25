import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/controllers/task_controller.dart';
import 'package:note_app/screens/widgets/todo_item.dart';

//List all tasks in a list view,
//can be reordered by pressing and holding the task and dragging it to the desired position,
//can be deleted by swiping left and pressing the delete button
//can be marked as done by pressing the checkbox
class ListToDo extends StatelessWidget {
  const ListToDo({
    super.key,
    required this.taskController,
  });

  final TaskController taskController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Obx(() {
            return ReorderableListView(
              onReorder: taskController.onReorder,
              shrinkWrap: true,
              children: taskController.filteredToDos().map((todo) {
                return TodoItem(
                  key: UniqueKey(),
                  todo: todo,
                );
              }).toList(),
            );
          })
        ],
      ),
    );
  }
}
