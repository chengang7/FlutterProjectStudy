import 'package:flutter/material.dart';
import 'package:flutter_app02/fonts/iconfont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const MyHomePage(),
    ),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text("首页"),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.assignment,
            color: Colors.red,
          ),
          title: Text("全部订单"),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Colors.green,
          ),
          title: Text("待付款"),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Colors.lightGreen,
          ),
          title: Text("我的收藏"),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.people,
            color: Colors.black54,
          ),
          title: Text("在线客服"),
          trailing: Icon(Icons.chevron_right),
        ),
        Divider(),
      ],
    );
  }
}
