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
        ListTile(
          leading: Image.network(
              "https://pics7.baidu.com/feed/d439b6003af33a87aad30f65786532345243b5dc.jpeg@f_auto?token=0ba4495255f1f561fc8af2e9422e3d8c"),
          title: const Text("多地用电量整体呈现出积极信号"),
          subtitle: const Text(
              "据中央广播电视总台中国之声《新闻和报纸摘要》报道，电力数据是反映经济运行的“晴雨表”和“风向标”。今年以来，随着消费信心逐步回暖、企业复工开足马力生产，多地用电量整体呈现出积极信号，经济增长企稳回升态势明显。"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network(
              "https://pics7.baidu.com/feed/d439b6003af33a87aad30f65786532345243b5dc.jpeg@f_auto?token=0ba4495255f1f561fc8af2e9422e3d8c"),
          title: const Text("多地用电量整体呈现出积极信号"),
          subtitle: const Text(
              "据中央广播电视总台中国之声《新闻和报纸摘要》报道，电力数据是反映经济运行的“晴雨表”和“风向标”。今年以来，随着消费信心逐步回暖、企业复工开足马力生产，多地用电量整体呈现出积极信号，经济增长企稳回升态势明显。"),
        ),
        const Divider(),
        ListTile(
          leading: Image.network(
              "https://pics7.baidu.com/feed/d439b6003af33a87aad30f65786532345243b5dc.jpeg@f_auto?token=0ba4495255f1f561fc8af2e9422e3d8c"),
          title: const Text("多地用电量整体呈现出积极信号"),
          subtitle: const Text(
              "据中央广播电视总台中国之声《新闻和报纸摘要》报道，电力数据是反映经济运行的“晴雨表”和“风向标”。今年以来，随着消费信心逐步回暖、企业复工开足马力生产，多地用电量整体呈现出积极信号，经济增长企稳回升态势明显。"),
        ),
        const Divider(),
        ListTile(
          title: const Text("多地用电量整体呈现出积极信号"),
          subtitle: const Text(
              "据中央广播电视总台中国之声《新闻和报纸摘要》报道，电力数据是反映经济运行的“晴雨表”和“风向标”。今年以来，随着消费信心逐步回暖、企业复工开足马力生产，多地用电量整体呈现出积极信号，经济增长企稳回升态势明显。"),
          trailing: Image.network(
              "https://pics7.baidu.com/feed/d439b6003af33a87aad30f65786532345243b5dc.jpeg@f_auto?token=0ba4495255f1f561fc8af2e9422e3d8c"),
        ),
        const Divider(),
      ],
    );
  }
}
