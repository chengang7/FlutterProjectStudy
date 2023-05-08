import 'package:flutter/material.dart';
import 'package:flutter_app02/fonts/iconfont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const GridViewCount(),
    ),
  ));
}

//使用gridview.count实现网格布局
class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //一行widget的数量
      crossAxisCount: 3,
      children: const [
        Icon(Icons.home),
        Icon(Icons.settings),
        Icon(Icons.search),
        Icon(Icons.person),
        Icon(Icons.cabin),
        Icon(Icons.cable),
      ],
    );
  }
}
