import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:note_app/screens/widgets/avatar_button.dart';
import 'package:note_app/screens/widgets/home_body.dart';
import 'package:note_app/screens/widgets/notification_button.dart';
import 'package:note_app/screens/widgets/setting_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              _buildAppBar(),
              const Text(
                'Daily Work Priorities',
                style: TextStyle(fontSize: 60, letterSpacing: 2.5),
              ),
              const HomeBody()
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      titleSpacing: 0,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [SettingButton(), Gap(8), Text('Task Flow')],
          ),
          Row(
            children: [
              NotificationButton(),
              Gap(8),
              AvatarButton(),
            ],
          )
        ],
      ),
    );
  }
}
