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
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个文本",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个文本",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个文本",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个文本",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个文本",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
          height: 44,
          child: const Text(
            "我是一个文本",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ],
    );
  }
}
