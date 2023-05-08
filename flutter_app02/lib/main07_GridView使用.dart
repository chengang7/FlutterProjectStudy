import 'package:flutter/material.dart';
import 'package:flutter_app02/fonts/iconfont.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const GridCountDemo1(),
    ),
  ));
}

//使用gridview.count实现网格布局
class GridViewCount extends StatelessWidget {
  const GridViewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //一行widget的数量
      crossAxisCount: 3,
      children: const [
        Icon(Icons.home),
        Icon(Icons.settings),
        Icon(Icons.search),
        Icon(Icons.person),
        Icon(Icons.cabin),
        Icon(Icons.cable),
      ],
    );
  }
}

//使用gridview.extent实现网格布局
class GridViewExtent extends StatelessWidget {
  const GridViewExtent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      //通过它可以快速的创建横轴子元素为固定最大长度的gridView
      maxCrossAxisExtent: 180,
      children: const [
        Icon(Icons.home),
        Icon(Icons.settings),
        Icon(Icons.search),
        Icon(Icons.person),
        Icon(Icons.cabin),
        Icon(Icons.cable),
      ],
    );
  }
}

class GridCountDemo1 extends StatelessWidget {
  const GridCountDemo1({Key? key}) : super(key: key);
  List<Widget> _initGridViewData() {
    List<Widget> tempList = [];
    for (var i = 0; i < 12; i++) {
      tempList.add(Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.blue),
        child: Text(
          "第$i个元素",
          style: const TextStyle(fontSize: 20),
        ),
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 2,
      //水平子Widget之间间距
      mainAxisSpacing: 10,
      //垂直子Widget之间间距
      crossAxisSpacing: 10,
      //子Widget宽高比例
      childAspectRatio: 0.7,
      children: _initGridViewData(),
    );
  }
}
