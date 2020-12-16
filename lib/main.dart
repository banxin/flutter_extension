import 'package:flutter/material.dart';
// import 'package:flutter_extension/test_version/my_home_page_orgin.dart';
// import 'package:flutter_extension/test_version/my_home_page_optimization_1.dart';
// import 'package:flutter_extension/test_version/my_home_page_optimization_2.dart';
// import 'package:flutter_extension/test_version/my_home_page_optimization_3.dart';
import 'package:flutter_extension/test_version/my_home_page_optimization_mix.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Extension Demo',
      theme: ThemeData(
        // primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
