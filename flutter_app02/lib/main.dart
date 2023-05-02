import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("你好flutter"),
      ),
      body: const Center(
        child: Text(
          "我是内容",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.red, fontSize: 40),
        ),
      ),
    ),
  ));
}
