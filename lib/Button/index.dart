import 'package:flutter/material.dart';

class LcnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: RaisedButton.icon(//图标按钮
            onPressed: null,//null为禁用状态，函数可以添加点击事件
            icon: Icon(Icons.print,size: 30,),//图标
            label: Text('RaisedButton',style: TextStyle(fontSize: 26),),//按钮上的文字
            color: Colors.orange,//背景色
            textColor: Colors.white,//文本颜色
            padding: EdgeInsets.symmetric(// padding距离
              vertical: 20
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),//设置圆角
              side: BorderSide( //设置边框
                color: Colors.pink,
                width: 5
              )
            ),
            elevation: 0,//设置阴影效果默认4.0
          ),
        ),
        FlatButton(
          onPressed: (){},
          child: Text('RaisedButton'),
        ),
        OutlineButton(
          onPressed: (){},
          child: Text('RaisedButton'),
        )
      ],
    );
  }
}



