import 'package:flutter/material.dart';

import './tabs/category.dart';
import './tabs/home.dart';
import './tabs/setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [HomePage(), CategoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            SizedBox(
              height: 60,
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("个人中心"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("系统设置"),
            )
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text("右边侧栏"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) => setState(() {
                _currentIndex = value;
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          ]),
    );
  }
}
