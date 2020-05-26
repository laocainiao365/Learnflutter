import 'package:flutter/material.dart';

class LcnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //主轴对齐方式
        mainAxisSize: MainAxisSize.min,//设置主轴空间尽量大或尽量小
        textDirection: TextDirection.rtl,//子组件的排布顺序
        crossAxisAlignment: CrossAxisAlignment.baseline,//设置交叉轴的对齐方式
        textBaseline: TextBaseline.alphabetic,//设置基线的方式
        children: <Widget>[//设置子组件
          Container(
            width: 140,
            height: 50,
            color: Colors.blue,
            child: Text("1-LAO",style: TextStyle(fontSize: 40),),
          ),
          Container(
            width: 80,
            height: 120,
            color: Colors.orange,
            child: Text('2-CAI',style:TextStyle(fontSize: 20)),
          ),
          Container(
            width: 120,
            height: 150,
            color: Colors.red,
            child: Text("3-NIAO",style: TextStyle(fontSize: 30),),
          ),
        ],
      ),
    );
  }
}
