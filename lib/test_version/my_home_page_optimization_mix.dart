import 'package:flutter/material.dart';
import 'package:flutter_extension/widget_nested/widget_nested.dart';

// MyHomePage 优化 第三步
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Nested Demo'),
        ),
        body: _createBody());
  }

  // 嵌套与链式混搭
  Widget _createBody() {
    return Container(
      child: Offstage(
        offstage: false,
        child: [
          "喵星人",
          'line',
          "汪星人",
          'line',
          "呜星人",
          'line',
          "嗷星人",
          'line',
          "哞星人",
          'line',
          "咯星人"
        ].transformToWidgets((title) {
          if (title == 'line') {
            return Divider(
              height: 2,
            );
          }
          return WidgetNestedWidget.addWidget(Icon(Icons.pets))
              .addWidgetListAsList([
                SizedBox(
                  width: 12,
                ),
                Text(title)
              ])
              .nestedRow(crossAxisAlignment: CrossAxisAlignment.center)
              .nestedContainer(padding: EdgeInsets.all(20));
        }).nestedListView(),
      ),
    );
  }
}
