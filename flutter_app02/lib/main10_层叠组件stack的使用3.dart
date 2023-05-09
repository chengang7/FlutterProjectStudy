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

    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 50),
          children: const [
            ListTile(
              title: Text("我是一个列表1"),
            ),
            ListTile(
              title: Text("我是一个列表2"),
            ),
            ListTile(
              title: Text("我是一个列表3"),
            ),
            ListTile(
              title: Text("我是一个列表4"),
            ),
            ListTile(
              title: Text("我是一个列表5"),
            ),
            ListTile(
              title: Text("我是一个列表6"),
            ),
            ListTile(
              title: Text("我是一个列表7"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
            ListTile(
              title: Text("我是一个列表"),
            ),
          ],
        ),
        Positioned(
            left: 0,
            top: 0,
            width: size.width,
            height: 44,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                        alignment: Alignment.center,
                        height: 44,
                        color: Colors.black,
                        child: const Text(
                          "二级导航",
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            )),
      ],
    );
  }
}
