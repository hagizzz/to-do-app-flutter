import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/controllers/task_controller.dart';

//Search box to search for tasks
class SearchBox extends StatelessWidget {
  SearchBox({
    super.key,
  });
  final TaskController taskController = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          onChanged: (value) => {taskController.handleKeyword(value)},
          decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
              ),
              prefixIconConstraints:
                  BoxConstraints(maxHeight: 20, minWidth: 25),
              border: InputBorder.none,
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey)),
        ));
  }
}
