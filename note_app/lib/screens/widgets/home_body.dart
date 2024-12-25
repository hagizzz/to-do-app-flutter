import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:note_app/screens/NoteScreen/note_route.dart';
import 'package:note_app/screens/TaskEditorScreen/task_route.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => TaskRoute());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade100,
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  'Task',
                  style: TextStyle(fontSize: 20),
                )),
          ),
          const Gap(8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const NoteRoute());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink.shade100,
                    padding: const EdgeInsets.all(20)),
                child: const Text(
                  'Note',
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}
