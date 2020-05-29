import 'package:flutter/material.dart';

class LcnWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 600,
      color: Colors.greenAccent,
      child: Wrap(
        direction: Axis.horizontal,//主轴方向
        alignment: WrapAlignment.end,//主轴对齐方式
        crossAxisAlignment: WrapCrossAlignment.center,//交叉轴对齐方式
        runAlignment: WrapAlignment.end,//交叉轴整体对齐方式
        spacing: 10,//主轴间隔
        runSpacing: 10,//交叉轴间隔
        textDirection: TextDirection.rtl,//主轴为水平方向，子组件的排列顺序
        children: List.generate(10, (index){//组件生成器
          double h = 140.0 - 10.0 * index;
          return Container(
            width: 100,
            height: h,
            color: Colors.primaries[index],
            child: Center(
              child: Text("$index", style: TextStyle(fontSize: 40,color: Colors.white)),
            ),
          );
        }),
      ),
    );
  }
}

