import 'package:flutter/material.dart';

class LcnFbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 260,
      color: Colors.blueGrey,
      child: FractionallySizedBox(
        widthFactor: 0.8,//宽度占比
        heightFactor: 0.5,//高度占比
        alignment: Alignment.topCenter,//对齐方式
        child: Container(
          width: 100,
          height: 100,
          color: Colors.red,
        )
      ),
    );
  }
}

