import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color? backgroundColor;
  final Function() onPressed;
  final Widget icon;
  const CircleButton(
      {Key? key,
      this.backgroundColor,
      required this.onPressed,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? Colors.white,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        splashRadius: 20,
        splashColor: Colors.grey[700],
      ),
    );
  }
}
