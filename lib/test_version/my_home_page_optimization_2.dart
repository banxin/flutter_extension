import 'package:flutter/material.dart';
import 'package:flutter_extension/widget_nested/widget_nested.dart';

// MyHomePage 优化 第二步（主体代码使用链式）
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Nested Demo'),
      ),
      body: buildContainer(),
    );
  }

  Container buildContainer() {
    // 嵌套
    // return Container(
    //   child: Offstage(
    //     offstage: false,
    //     child: ListView(
    //       children: <Widget>[
    //         buildItem("喵星人"),
    //         buildItem("汪星人"),
    //       ],
    //     ),
    //   ),
    // );

    // 链式调用
    return [
      _buildItem("喵星人"),
      _bulidDivider(),
      _buildItem("汪星人"),
      _bulidDivider(),
      _buildItem("呜星人"),
      _bulidDivider(),
      _buildItem("嗷星人"),
      _bulidDivider(),
      _buildItem("哞星人"),
      _bulidDivider(),
      _buildItem("咯星人"),
    ].nestedListView().nestedOffstage(offstage: false).nestedContainer();
  }

  Container _buildItem(String name) {
    // 完全链式调用
    return [
      Icon(Icons.pets),
      SizedBox(
        width: 12,
      ),
      Text(name)
    ]
        .nestedRow(crossAxisAlignment: CrossAxisAlignment.center)
        .nestedContainer(color: Colors.green, padding: EdgeInsets.all(20));
  }

  Widget _bulidDivider() {
    return Divider(
      height: 2,
    );
  }
}
