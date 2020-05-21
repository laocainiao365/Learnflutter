import 'package:flutter/material.dart';

class LcnScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter'),
      ),
      body: Center(
        child: Text('flutter'),
      ),
      drawer: Drawer(),
//      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('首页'),
            icon: Icon(
              Icons.home
            )
          ),
          BottomNavigationBarItem(
              title: Text('视频'),
              icon: Icon(
                  Icons.video_call
              )
          )
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: (){},
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      persistentFooterButtons: <Widget>[
//        FlatButton(
//          onPressed: (){},
//          child: Text('flatbutton'),
//        ),
//        FlatButton(
//          onPressed: (){},
//          child: Text('flatbutton'),
//        )
//      ],
      bottomSheet: BottomSheet(
          onClosing: () {},
          backgroundColor: Colors.lightBlue,
          builder: (context) {
            return Container(
              height: 150,
              alignment: Alignment.center,
              child: Text('BottomSheet'),
            );
          }
      ),
    );
  }
}
