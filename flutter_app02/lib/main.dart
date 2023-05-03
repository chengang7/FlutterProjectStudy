import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("你好flutter"),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: Text(
        "我是一个自定义组件",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.red, fontSize: 40),
      ),
    );
  }
}
