import 'package:flutter/material.dart';
import './page/Home.dart';
import './page/Note.dart';
import './page/Video.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  int _pageindex = 0;

  List _page = <Widget>[
    Home(),
    Video(),
    Note(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._pageindex,
        onTap: (int index){
          setState(() {
            this._pageindex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home
            ),
            title: Text('主页')
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.video_call
              ),
              title: Text('视频教程')
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  Icons.note
              ),
              title: Text('Doc')
          ),
        ],
      ),
      body: _page[_pageindex]
    );
  }
}
