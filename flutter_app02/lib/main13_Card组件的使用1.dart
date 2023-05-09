import 'package:flutter/material.dart';
import 'package:flutter_app02/fonts/iconfont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const HomePage(),
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          //配置卡片的阴影深度
          elevation: 20,
          //设置卡片的外边距
          margin: const EdgeInsets.all(10),
          //配置卡片的圆角
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "电话：123456789",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：安徽省合肥市蜀山区",
                ),
              ),
            ],
          ),
        ),
        Card(
          elevation: 20,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  "李四",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("Java高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "电话：123456789",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：安徽省合肥市蜀山区",
                ),
              ),
            ],
          ),
        ),
        Card(
          //配置卡片的阴影深度
          elevation: 20,
          //设置卡片的外边距
          margin: const EdgeInsets.all(10),
          //配置卡片的圆角
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: const [
              ListTile(
                title: Text(
                  "张三",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text("高级软件工程师"),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "电话：123456789",
                ),
              ),
              ListTile(
                title: Text(
                  "地址：安徽省合肥市蜀山区",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
