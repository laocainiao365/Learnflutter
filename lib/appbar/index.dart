import 'package:flutter/material.dart';

class LcnAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('LAOCAINIAO'),
          //文字居中
          centerTitle: true,
          //设置背景颜色
          backgroundColor: Colors.deepOrange,
          //设置阴影效果
          elevation: 0,
          // 左侧图标
          leading: IconButton(
              onPressed: (){},
              icon: Icon(Icons.arrow_back)
          ),
          //右侧图标
          actions: <Widget>[
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search)
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) =><PopupMenuItem>[
                PopupMenuItem(child: Text('分享到朋友圈'),value: 'chat',),
                PopupMenuItem(child: Text('分享到facebook'),value: 'facebook',),
              ],
              onSelected: (action){
                switch(action){
                  case 'chat':
                    print('分享到朋友圈');
                    break;
                  case 'facebook':
                    print('分享到facebook');
                    break;
                }
              },
            )
          ],
          //appbar底部切换
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon:Icon(Icons.print)),
              Tab(icon:Icon(Icons.favorite)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Icon(Icons.print)
            ),
            Center(
                child: Icon(Icons.favorite)
            ),
          ],
        )
      ),
    );

  }
}
