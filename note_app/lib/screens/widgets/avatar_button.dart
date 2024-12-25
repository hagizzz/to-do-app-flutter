import 'package:flutter/material.dart';

class AvatarButton extends StatelessWidget {
  const AvatarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/avatar.jpg'),
      ),
    );
  }
}
