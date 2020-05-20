import 'package:flutter/material.dart';

class LcnMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'这是个flutter应用',
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter'),
        ),
        body: Center(
          child: Text('hello world'),
        ),
      ),
    );
  }
}
