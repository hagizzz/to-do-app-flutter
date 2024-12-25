import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/controllers/task_controller.dart';
import 'package:note_app/screens/widgets/add_new_to_do_button.dart';
import 'package:note_app/screens/widgets/list_to_do.dart';
import 'package:note_app/screens/widgets/search_box.dart';
import 'package:note_app/screens/widgets/setting_button.dart';

class TaskRoute extends StatelessWidget {
  TaskRoute({super.key});

  final _todoController = TextEditingController();

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasks',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        actions: [
          AddNewToDoButton(todoController: _todoController),
          const SettingButton(),
        ],
      ),
      body: Column(
        children: [
          SearchBox(),
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 20),
            child: const Text(
              'All Todos',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
          ListToDo(taskController: taskController)
        ],
      ),
    );
  }
}
