import 'package:flutter/material.dart';
import 'package:flutter_app02/pages/tabs/message.dart';
import 'package:flutter_app02/pages/tabs/user.dart';

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
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                    flex: 1,
                    child: UserAccountsDrawerHeader(
                      accountName: Text("Cg"),
                      accountEmail: Text("cg@qq.com"),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.itying.com/images/flutter/3.png"),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.itying.com/images/flutter/1.png"))),
                    ))
              ],
            ),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text("个人中心"),
            ),
            const Divider(),
            const ListTile(
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
          type: BottomNavigationBarType.fixed,
          onTap: (value) => setState(() {
                _currentIndex = value;
              }),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "消息"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "用户"),
          ]),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25)),
        child: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
