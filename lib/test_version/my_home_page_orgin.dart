import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Nested Demo'),
      ),
      body: Container(
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
      ),
    );
  }

  Container _buildItem(String name) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.pets),
          SizedBox(
            width: 12,
          ),
          Text(name),
        ],
      ),
    );
  }

  Widget _bulidDivider() {
    return Divider(
      height: 2,
    );
  }
}
