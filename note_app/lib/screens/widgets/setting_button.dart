import 'package:flutter/material.dart';

class SettingButton extends StatelessWidget {
  const SettingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
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
          child: const Icon(Icons.settings)),
    );
  }
}
