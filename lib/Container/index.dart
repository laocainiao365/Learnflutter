import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LcnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
//      constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0),
      width: 300,
      height: 200,
      padding: EdgeInsets.all(40),

//      alignment: Alignment.bottomCenter,
//      child: Text('laocainiao'),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            width: 20,
            color: Colors.blue,
            style: BorderStyle.solid
          ),
          left: BorderSide(
              width: 20,
              color: Colors.blue,
              style: BorderStyle.solid
          ),
          right: BorderSide(
              width: 20,
              color: Colors.blue,
              style: BorderStyle.solid
          ),
          bottom: BorderSide(
              width: 20,
              color: Colors.blue.withOpacity(0.5),
              style: BorderStyle.solid
          ),
        ),
//        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            offset: Offset(6.0,7.0),
            color: Colors.black.withOpacity(0.5),
            blurRadius: 2.0, //模糊程度
            spreadRadius: 6.0 //阴影的扩大或缩小，负数就会缩小面积
          )
        ],
        shape: BoxShape.circle, //盒子的形状
//        gradient: RadialGradient(
//          colors: [
//            Colors.deepOrange,
//            Colors.blueGrey
//          ]
//        ),
        gradient: LinearGradient(
          colors: [
            Colors.deepOrange,
            Colors.black
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
//        borderRadius: BorderRadius.only(
//          topLeft: Radius.circular(100),
//          bottomLeft: Radius.circular(100)
//        ),
        image: DecorationImage(
//          image: NetworkImage("https://farm4.staticflickr.com/3304/3270467590_27d2944917_b.jpg"),
          image: AssetImage(),
          fit: BoxFit.cover,
          alignment: Alignment.center,
          colorFilter: ColorFilter.mode(
              Colors.blue.withOpacity(0.8),
              BlendMode.dstATop
          )
        ),

      ),
    );
  }
}
