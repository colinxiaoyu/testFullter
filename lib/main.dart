import 'package:flutter/material.dart';
import '../shared/size_fit.dart';

import './extension/double_extension.dart';
import './extension/int_extension.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HYSizeFit.initialize(context);
    print(200.rpx);
    print(200.rpx);
    return Scaffold(
      body: new GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this would produce 2 rows.
        crossAxisCount: 2,
        // Generate 100 Widgets that display their index in the List
        children: new List.generate(100, (index) {
          return new Center(
            child: Text(
              'Item $index',
            ),
          );
        }),
      ),
    );
  }
}
