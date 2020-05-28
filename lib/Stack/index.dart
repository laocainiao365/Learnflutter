import 'package:flutter/material.dart';

class LcnStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 100,
      ),
      child: Stack(
        alignment: Alignment.topCenter,//子组件的对齐方式
        fit: StackFit.expand, //设置子组件尽量大，对应的loose是原样
        overflow: Overflow.visible,//定位超出的部分的处理方式，clip是默认的直接减掉，visible是让超出部分显示
        children: <Widget>[
          Container(
            width: 400,
            height: 260,
            color: Colors.blue,
            child: Text("01",style: TextStyle(fontSize: 50,color: Colors.white)),
          ),
          Container(
            width: 200,
            height: 160,
            color: Colors.green,
            child: Text("02",style: TextStyle(fontSize: 50,color: Colors.white)),
          ),
          /*外层包裹Positioned可以给组件定位，里面的top、left等属性具体定位的位置，
          *这里注意：Positioned里面的width\height设置以后子组件的width\height将不起作用
          * */
          Positioned(
            top: -40,
            left: 50,
            width: 200,
            height: 200,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blueGrey,
              child: Text("03",style: TextStyle(fontSize: 50,color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}

