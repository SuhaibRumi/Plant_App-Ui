import 'package:flutter/material.dart';

class BoxWidgets extends StatelessWidget {
  const BoxWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.green[300], borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.star_rate_rounded,
            color: Colors.white,
          ),
          Text(
            "4.5",
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
