import 'package:flutter/material.dart';

class LcnFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 2,//平分剩余空间比例
          fit: FlexFit.tight,//开启弹性布局
          child: Container(
            width: 150,
            height: 100,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 1,//平分剩余空间比例
          child: Container(
            width: 100,
            height: 100,
            color: Colors.indigo,
          ),
        ),
        Spacer(
           flex: 1//显示的是空白，平分剩余空间为间隔距离
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.green,
        ),
      ],
    );
  }
}



