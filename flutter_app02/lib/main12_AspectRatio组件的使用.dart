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
    //获取屏幕的宽高
    final size = MediaQuery.of(context).size;
    //需求：页面上一个容器，宽度是屏幕的宽度，高度是宽度的一半
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}
