import 'package:flutter/material.dart';
import 'package:flutter_extension/widget_nested/widget_nested.dart';

// MyHomePage 优化 第一步（抽取的代码使用链式）
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
    return Container(
      child: Offstage(
        offstage: false,
        child: ListView(
          children: <Widget>[
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
          ],
        ),
      ),
    );
  }

  Container _buildItem(String name) {
    // 直接嵌套
    // return Container(
    //   color: Colors.white,
    //   padding: EdgeInsets.all(20),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: <Widget>[
    //       Icon(Icons.pets),
    //       SizedBox(
    //         width: 12,
    //       ),
    //       Text(name),
    //     ],
    //   ),
    // );

    // 完全链式调用
    return [
      Icon(Icons.pets),
      SizedBox(
        width: 12,
      ),
      Text(name)
    ]
        .nestedRow(crossAxisAlignment: CrossAxisAlignment.center)
        .nestedContainer(color: Colors.pink, padding: EdgeInsets.all(20));
  }

  Widget _bulidDivider() {
    return Divider(
      height: 2,
    );
  }
}
