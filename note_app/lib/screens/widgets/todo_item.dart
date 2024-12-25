import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:note_app/controllers/task_controller.dart';

import '../../models/todo.dart';

//Widget to display a single task

class TodoItem extends StatelessWidget {
  final ToDo todo;

  final TaskController taskController = Get.find<TaskController>();

  TodoItem({
    super.key,
    required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(motion: const StretchMotion(), children: [
        SlidableAction(
          onPressed: ((context) {
            taskController.deleteToDoItem(todo.id);
          }),
          icon: Icons.delete_forever,
          backgroundColor: Colors.red,
        ),
        // SlidableAction(
        //   onPressed: ((context) {
        //     taskController.handleToDoChange(todo);
        //   }),
        //   icon: Icons.check,
        //   backgroundColor: Colors.green,
        // )
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            trailing: ReorderableDragStartListener(
              index: taskController.todosList.indexOf(todo),
              child: const Icon(Icons.drag_handle),
            ),
            key: ValueKey(taskController.todosList.indexOf(todo)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            title: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: todo.isDone,
              title: Text(
                todo.toDoText,
                style: TextStyle(
                    fontSize: 16,
                    decoration:
                        todo.isDone ? TextDecoration.lineThrough : null),
              ),
              onChanged: (value) {
                taskController.handleToDoChange(todo);
              },
            ),
          ),
        ],
      ),
    );
  }
}
