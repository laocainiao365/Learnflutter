import 'package:flutter/material.dart';

class LcnImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      color: Colors.blueGrey,
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 50
      ),
      child: Image.network(
        "https://img3.doubanio.com/view/subject/m/public/s2971623.jpg",
        fit: BoxFit.cover, //图片显示方式设置
        alignment: Alignment.bottomLeft, //对齐方式
        color: Colors.green,//滤镜叠加颜色设置
        colorBlendMode: BlendMode.dst,//滤镜效果设置
        repeat: ImageRepeat.repeat,//设置平铺方式
      ),
    );
  }
}


