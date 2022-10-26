import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.1,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          splashRadius: 20,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
            splashRadius: 20,
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            SearchPanel(),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
              ),
            ),
            SizedBox(height: 5),
            PlantList(),
            SizedBox(height: 10),
            TabList()
          ],
        ),
      ),
    );
  }
}
