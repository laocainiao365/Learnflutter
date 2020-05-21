import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.print),
            tooltip: '打印',
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.share),
            tooltip: 'fenxiang',
          ),
        ],
      ),
      body: Container(
        color: Colors.green,
        child: Align(
          alignment: Alignment.topLeft,
          widthFactor: 2,
          heightFactor: 2,
          child: Text('I am align',
            style: TextStyle(
              backgroundColor: Colors.white
            ),
          ),
        )
      ),
    );
  }
}
