import 'package:flutter/material.dart';

class LcnCircleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: ClipOval(
            child: Image.network(
              "http://b-ssl.duitang.com/uploads/item/201707/10/20170710210234_y3Kf5.jpeg",
              width: 200,
              height: 200,
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "http://b-ssl.duitang.com/uploads/item/201509/03/20150903160121_tMLZn.jpeg",
            ),
            radius: 100, //设置图片半径
            child: Container(
              alignment: Alignment(0,0.7),
              child: Text("CAINIAO",style: TextStyle(fontSize: 24)),
            )
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment(0,0.7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), //设置圆角
                border: Border.all( //设置边框
                  width: 10,
                  color: Colors.orange[200]
                ),
                image: DecorationImage( //设置图片
                    image: NetworkImage(
                      "http://img3.cache.netease.com/photo/0003/2016-12-12/C833NHCG00AJ0003.jpg",
                      scale: 0.5,
                    ),
                    fit: BoxFit.cover,
                    alignment: Alignment(0,-1),
                    colorFilter: ColorFilter.mode(Colors.blue, BlendMode.color) //这只图片混合模式
                 ),
            ),
            child: Text("CAINIAO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
          ),
        ),
      ],
    );
  }
}
