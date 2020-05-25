import 'package:flutter/material.dart';

class LcnRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('老菜鸟-flutter免费视频',style: TextStyle(fontSize: 30),),
        centerTitle: true,
      ),
      body:Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 40),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Lao',
                style: TextStyle(
                  fontSize: 50
                )
              ),
              TextSpan(
                  text: 'cai niao',
                  style: TextStyle(
                      fontSize: 20
                  )
              ),
            ]
          ),
        )
      )

    );
  }
}
