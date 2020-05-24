import 'package:flutter/material.dart';

class LcnScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //顶部区域
      appBar: AppBar(
        title: Text('老菜鸟'),
      ),
      //内容区域
      body: Center(
        child: Text('hello'),
      ),
      //左侧侧边栏
      drawer: Drawer(),
      //右侧侧边栏
      endDrawer: Drawer(),
      //底部菜单
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text('home'),
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text('video'),
              icon: Icon(Icons.video_call)
          ),
        ],
      ),
      //浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('onPressed');
        },
        child: Icon(Icons.add),
      ),
      //浮动按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //底部导航按钮上面的按钮
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: (){},
          child: Text('FlatButton'),
        ),
        FlatButton(
          onPressed: (){},
          child: Text('FlatButton'),
        ),
      ],
      //工具栏部分
      bottomSheet: BottomSheet(
        onClosing: (){},
        backgroundColor: Colors.blue,
        builder: (context){
          return Container(
            width: double.infinity,
            height: 50,
            child: Center(
              child: Text('bottomSheet'),
            ),
          );
        },
      ),
    );
  }
}
