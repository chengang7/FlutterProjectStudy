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
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.red),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.green),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.black),
          ),
          Container(
            height: 120,
            width: 120,
            decoration: const BoxDecoration(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
