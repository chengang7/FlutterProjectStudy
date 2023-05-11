import 'package:flutter/material.dart';

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
    return Wrap(
      //水平间距
      spacing: 10,
      //垂直间距
      runSpacing: 10,

      children: [
        Button(
          "第一集",
          onPressed: () {},
        ),
        Button(
          "第二集",
          onPressed: () {},
        ),
        Button(
          "第三集",
          onPressed: () {},
        ),
        Button(
          "第四集",
          onPressed: () {},
        ),
        Button(
          "第五集",
          onPressed: () {},
        ),
        Button(
          "第六集",
          onPressed: () {},
        ),
        Button(
          "第七集",
          onPressed: () {},
        ),
        Button(
          "第八集",
          onPressed: () {},
        ),
        Button(
          "第九集",
          onPressed: () {},
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  Button(this.text, {Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Colors.grey[200]), //设置按钮的背景颜色
          foregroundColor: MaterialStateProperty.all(Colors.black38),
        ),
        onPressed: onPressed,
        child: Text(text));
  }
}
