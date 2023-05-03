import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: const Text("你好flutter"),
        ),
        body: Column(
          children: const [
            MyApp(),
            SizedBox(
              height: 20,
            ),
            Circular(),
            SizedBox(
              height: 20,
            ),
            ClipImage(),
            SizedBox(
              height: 20,
            ),
            LocalImage(),
          ],
        )),
  ));
}

/*
图片地址：
https://c-ssl.dtstatic.com/uploads/item/202003/19/20200319182804_lrmkk.thumb.1000_0.jpg
https://www.itying.com/themes/itying/images/ionic4.png
*/
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        width: 150,
        height: 150,
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Image.network(
          "https://www.itying.com/themes/itying/images/ionic4.png",
          //对图片进行缩放
          //scale: 2,
          //对图片进行剪切
          //fit: BoxFit.cover,
          //对图片进行平铺
          repeat: ImageRepeat.repeatX,
        ),
      ),
    );
  }
}

//实现一个圆形图片
class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(75),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://www.itying.com/themes/itying/images/ionic4.png"),
              fit: BoxFit.cover)),
    );
  }
}

//实现一个圆形图片2
class ClipImage extends StatelessWidget {
  const ClipImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://www.itying.com/themes/itying/images/ionic4.png",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

//加载本地图片
class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.asset(
        "images/a.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
