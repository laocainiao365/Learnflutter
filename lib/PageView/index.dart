import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LcnPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      allowImplicitScrolling: true,
      onPageChanged: (index){
        print(index);
      },
      controller: PageController(
        initialPage: 1,
      ),
      children: <Widget>[
        Container(
          color: Colors.blueGrey,
          child: Center(
            child: Text("data1",style: TextStyle(fontSize: 50,color: Colors.white)),
          ),
        ),
        Container(
          color: Colors.black38,
          child: Center(
            child: Text("data2",style: TextStyle(fontSize: 50,color: Colors.white)),
          ),
        ),
        Container(
          color: Colors.black54,
          child: Center(
            child: Text("data3",style: TextStyle(fontSize: 50,color: Colors.white)),
          ),
        ),
      ],
    );
  }
}