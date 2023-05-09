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
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("普通按钮")),
            TextButton(onPressed: () {}, child: const Text("文本按钮")),
            const OutlinedButton(onPressed: null, child: Text("边框按钮")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.thumb_up))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.send),
                label: const Text("发送")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.info),
                label: const Text("消息")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("添加")),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  //背景颜色
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  //文字颜色
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: const Text("普通按钮")),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                    //背景颜色
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    //文字颜色
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  onPressed: () {},
                  child: const Text("大按钮")),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(10),
              height: 30,
              child: ElevatedButton(onPressed: () {}, child: const Text("登录")),
            )),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    //圆角
                    shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )),
                onPressed: () {},
                child: const Text("圆角按钮")),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: ElevatedButton(
                  style: ButtonStyle(
                      //圆型
                      shape: MaterialStateProperty.all(
                    const CircleBorder(
                      side: BorderSide(color: Colors.blue),
                    ),
                  )),
                  onPressed: () {},
                  child: const Text(
                    "圆型按钮",
                    style: TextStyle(fontSize: 10),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OutlinedButton(
                style: ButtonStyle(
                  //修改边框粗细和颜色
                  side: MaterialStateProperty.all(
                      const BorderSide(width: 1, color: Colors.red)),
                ),
                onPressed: () {},
                child: const Text("边框颜色改变")),
          ],
        ),
      ],
    );
  }
}
