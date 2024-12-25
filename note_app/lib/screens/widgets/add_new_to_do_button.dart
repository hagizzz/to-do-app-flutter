import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/controllers/task_controller.dart';

//Button to add new task
class AddNewToDoButton extends StatelessWidget {
  const AddNewToDoButton({
    super.key,
    required TextEditingController todoController,
  }) : _todoController = todoController;

  final TextEditingController _todoController;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Add new task'),
            content: TextField(
              controller: _todoController,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                  _todoController.clear();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  final TaskController taskController =
                      Get.find<TaskController>();
                  {
                    _todoController.text != ''
                        ? taskController.addToDoItem(_todoController.text)
                        : '';
                  }
                  Navigator.pop(context);
                  _todoController.clear();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
      ),
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.pink.shade50,
              borderRadius: BorderRadius.circular(100)),
          child: const Icon(Icons.add)),
    );
  }
}
