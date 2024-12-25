import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/controllers/task_controller.dart';
import 'package:note_app/screens/HomeScreen/my_home_page.dart';

void main() {
  Get.put(TaskController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true, fontFamily: GoogleFonts.bitter().fontFamily),
      home: const MyHomePage(),
    );
  }
}
