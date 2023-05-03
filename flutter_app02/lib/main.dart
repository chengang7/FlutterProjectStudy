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
            MyButton(),
            MyText(),
          ],
        )),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        //配置container容器内元素的方位
        alignment: Alignment.center,
        width: 200,
        height: 200,
        //位移
        //transform: Matrix4.translationValues(40, 0, 0),
        //旋转
        transform: Matrix4.rotationZ(0.02),
        decoration: BoxDecoration(
            //背景颜色
            color: Colors.yellow,
            //边框
            border: Border.all(color: Colors.red, width: 2),
            //配置圆角
            borderRadius: BorderRadius.circular(10),
            //配置阴影
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 20)],
            //配置渐变(线性渐变)
            gradient:
                const LinearGradient(colors: [Colors.red, Colors.yellow])),

        child: const Text(
          "你好 flutter",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      //EdgeInsets.fromLTRB 指定左上右下的边距
      //EdgeInsets.all() 指定四周的距离
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "按钮",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(color: Colors.yellow),
      child: const Text(
        "你好 我是flutter",
        textAlign: TextAlign.center,
        //最大显示行数
        maxLines: 1,
        //溢出显示几个点
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            fontSize: 40,
            //加粗900
            fontWeight: FontWeight.w900,
            color: Colors.red,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            decoration: TextDecoration.underline,
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.dashed),
      ),
    );
  }
}
