import 'package:flutter/material.dart';

class CustomWigdet extends StatelessWidget {
  const CustomWigdet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.green[700],
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(image: AssetImage("assets/5.png")),
      ),
    );
  }
}
