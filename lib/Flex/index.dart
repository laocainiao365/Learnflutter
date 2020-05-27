import 'package:flutter/material.dart';

class LcnFlex extends StatefulWidget {
  @override
  _LcnFlexState createState() => _LcnFlexState();
}

class _LcnFlexState extends State<LcnFlex> {

  bool flag = true;
  @override
  Widget build(BuildContext context) {
    //获取设备横屏或者竖屏
    var srceen = MediaQuery.of(context).orientation;

    //判断横竖屏修改状态
    if(srceen == Orientation.portrait){
      setState(() {
        flag = true;
      });
    }else{
      setState(() {
        flag = false;
      });
    }

    return Flex(
      direction: flag?Axis.vertical:Axis.horizontal, //根据状态的变化设置横竖屏
      children: <Widget>[
        Row(),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.orange,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}


