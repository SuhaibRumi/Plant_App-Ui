import 'package:flutter/material.dart';

import '../view/view.dart';

class OutdoorGrid extends StatelessWidget {
  const OutdoorGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: const [
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
        OutdoorPage(),
      ],
    );
  }
}
