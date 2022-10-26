import 'package:flutter/material.dart';

import '../view/view.dart';

class IndoorGrid extends StatelessWidget {
  const IndoorGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: const [
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
        IndoorPage(),
      ],
    );
  }
}
