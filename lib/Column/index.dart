import 'package:flutter/material.dart';

class LcnColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, //主轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.stretch,//交叉轴对齐方式
      verticalDirection: VerticalDirection.up,//子组件排列方式
      mainAxisSize: MainAxisSize.max,//占据空间最大或最小
      children: <Widget>[//子组件可以多个
        Container(
          color: Colors.orange,
//          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30
          ),
          child: Text("LAO-CAI-NIAO1"),
        ),
        Container(
          color: Colors.blue,
          padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30
          ),
          child: Text("LAO2"),
        ),
        Container(
          color: Colors.red,
          padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 30
          ),
          child: Text("CAI-NIAO3"),
        ),
      ],
    );
  }
}
