import 'package:flutter/material.dart';
import '../view/view.dart';

class GridDetail extends StatelessWidget {
  const GridDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      children: const [
        GridItemPage(),
        GridItemPage(),
        GridItemPage(),
        GridItemPage(),
        GridItemPage(),
        GridItemPage(),
        GridItemPage(),
        GridItemPage(),
      ],
    );
  }
}
