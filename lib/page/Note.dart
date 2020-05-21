import 'package:flutter/material.dart';

class Note extends StatefulWidget {
  @override
  _NoteState createState() => _NoteState();
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
            width: 200,
            child: TabBar(
              indicator: BoxDecoration(),
              tabs: <Widget>[
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                ),
              ],
            ),
          )
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('热门'),
            ),
            Center(
              child: Text('推荐'),
            ),
          ],
        ),
      ),
    );
  }
}
