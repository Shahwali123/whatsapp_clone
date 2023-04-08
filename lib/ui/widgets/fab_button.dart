import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/res/colors.dart';

class FAB extends StatelessWidget {
  const FAB(
      {super.key, required this.iconData, this.onPressed, this.mini = false});

  final IconData iconData;
  final void Function()? onPressed;
  final bool mini;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: mini,
      backgroundColor: AppColor.green,
      onPressed: onPressed,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
