import 'package:flutter/material.dart';
import 'package:plants_app/view/garden_view.dart';

class GardenGrid extends StatelessWidget {
  const GardenGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const [
        GardenPage(),
        GardenPage(),
        GardenPage(),
        GardenPage(),
      ],
    );
  }
}
