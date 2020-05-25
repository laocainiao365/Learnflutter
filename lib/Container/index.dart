import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LcnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 100
      ),
      padding: EdgeInsets.all(10),
      transform: Matrix4.translationValues(40, 120, 1),
      alignment: Alignment.topCenter,
      child: Text('Lao',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          bottomLeft: Radius.circular(150),
        ),
//        borderRadius: BorderRadius.circular(40),
        // 设置背景图片
        image: DecorationImage(
          image: NetworkImage("https://img9.doubanio.com/view/subject/m/public/s6880326.jpg"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          colorFilter: ColorFilter.mode( //设置滤镜
            Colors.blue, 
            BlendMode.dstATop
          )
        ),
        shape: BoxShape.rectangle,
        // 设置阴影
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(14.0,20.0),
            blurRadius: 10.0, // 模糊程度
            spreadRadius: -10,// 阴影的距离
          )
        ],
        //设置border，单独设置
        border: Border(
          top: BorderSide(
            width: 30,
            color: Colors.black
          ),
          bottom: BorderSide(
              width: 50,
              color: Colors.blue
          ),
        )
      ),
    );
  }
}
