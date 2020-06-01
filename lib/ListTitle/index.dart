import 'package:flutter/material.dart';

class LcnListTitle extends StatefulWidget {
  @override
  LcnListTitleState createState() => LcnListTitleState();
}

class LcnListTitleState extends State<LcnListTitle> {

  // 声明滚动，同时设置默认滚动300
  ScrollController _controller = ScrollController(initialScrollOffset: 300);

  @override
  void initState() {
    super.initState();
    //初始化滚动事件
    _controller.addListener(() {
      //滚动带底部
      if(_controller.offset == _controller.position.maxScrollExtent){
//        print("我是有底线的...");
      }
      // 滚动到顶部
      if(_controller.offset == _controller.position.minScrollExtent){
        print("到顶了...");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
        controller: _controller,
        children: List.generate(30, (index){
          return Column(
            children: <Widget>[
          ListTile(
                leading: ClipOval(//前面区域
                    child: Image.asset("images/1.jpg"),
                ),
                title: Text("老菜鸟$index"),
                subtitle: Text(
                  "老菜鸟免费分享视频老菜鸟免费分享视频老菜鸟免费分享视频老菜鸟免费分享视频老菜鸟免费分享视频",
                   maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Icon(Icons.keyboard_arrow_right),//后面区域
                onTap: (){
                  print("onTap");
                },
                onLongPress: (){
                  print("onlongpress");
                },
                dense: true,//整体变得小
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 30)//列表每一项的padding
              ),
              Divider(indent: 20,endIndent: 20,thickness: 2,)
            ],
          );
        }),
    );
  }
}







