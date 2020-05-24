import 'package:flutter/material.dart';

class LcnTextu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Text(
     "Lao cai niao",
      maxLines: 2, //最大显示行数
      overflow: TextOverflow.ellipsis, //截取方式
      textAlign: TextAlign.center,//对齐方式
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w600,
        fontFamily: "pto",
        color: Colors.white,
        decoration: TextDecoration.underline, //设置下换线
        wordSpacing: 9,//设置单词之间的距离
        letterSpacing: 8//设置字母之间的距离
      )
    );
  }
}
