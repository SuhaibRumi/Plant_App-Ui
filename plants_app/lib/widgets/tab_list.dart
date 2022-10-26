import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class TabList extends StatefulWidget {
  const TabList({Key? key}) : super(key: key);

  @override
  State<TabList> createState() => _TabListState();
}

class _TabListState extends State<TabList> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: const [
              Tab(
                text: "All",
              ),
              Tab(
                text: "Indoors",
              ),
              Tab(
                text: "Outdoors",
              ),
              Tab(
                text: "Garden",
              ),
            ]),
        SizedBox(
          height: 500,
          child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [
                SizedBox(height: 300, child: GridDetail()),
                IndoorGrid(),
                OutdoorGrid(),
                GardenGrid(),
              ]),
        )
      ],
    );
  }
}
