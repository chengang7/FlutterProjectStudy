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
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 300,
          height: 400,
          color: Colors.red,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
        ),
        const Text("你好 flutter1"),
      ],
    );
  }
}
