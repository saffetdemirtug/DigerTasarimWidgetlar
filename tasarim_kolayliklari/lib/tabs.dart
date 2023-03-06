import 'package:flutter/material.dart';

class TabOrnek extends StatefulWidget {
  const TabOrnek({super.key});

  @override
  State<TabOrnek> createState() => _TabOrnekState();
}

class _TabOrnekState extends State<TabOrnek>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar Kullanımı"),
        bottom: TabBar(controller: tabController, tabs: const [
          Tab(
            icon: Icon(Icons.add),
            child: Text("Tab Bar 1"),
          ),
          Tab(
            icon: Icon(Icons.lock),
            child: Text("Tab Bar 2"),
          ),
          Tab(
            icon: Icon(Icons.map),
            child: Text("Tab Bar 3"),
          ),
        ]),
      ),
      body: TabBarView(controller: tabController, children: [
        Center(
            child: Container(
          color: Colors.blueGrey,
          child: const Text(
            "Tab Bar 1 Body",
            style: TextStyle(fontSize: 48),
          ),
        )),
        Center(
            child: Container(
          color: Colors.grey.shade600,
          child: const Text(
            "Tab Bar 2 Body",
            style: TextStyle(fontSize: 48),
          ),
        )),
        Center(
            child: Container(
          color: Colors.grey,
          child: const Text(
            "Tab Bar 3 Body",
            style: TextStyle(fontSize: 48),
          ),
        )),
      ]),
    );
  }
}
