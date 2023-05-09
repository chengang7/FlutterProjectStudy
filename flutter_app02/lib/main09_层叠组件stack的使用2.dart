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
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      // stack 相对于外部容器进行定位 如果没有外部容器，就相对于屏幕定位
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
            ),
          ),
          const Positioned(right: 0, top: 190, child: Text("你好 flutter")),
        ],
      ),
    );
  }
}
