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
    // TODO: implement build
    return Column(
      children: const [
        SizedBox(height: 20,),
        Icon(Icons.home,size: 40,color: Colors.yellow,),
        SizedBox(height: 20,),
        Icon(Icons.settings),
        SizedBox(height: 20,),
        Icon(Icons.search),
        SizedBox(height: 20,),
        Icon(Icons.person),
        SizedBox(height: 20,),
        Icon(IconFont.weixin,size: 40,color: Colors.green,),
      ],
    );
  }
}
