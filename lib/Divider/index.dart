import 'package:flutter/material.dart';

class LcnDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 100,
          color: Colors.black54,
          child: ImageIcon(
            AssetImage('images/1.png'),
            color: Colors.white,
          ),
        ),
        Divider(
          color: Colors.black54,
          thickness: 5,
          height: 40,
          indent: 30,
          endIndent: 30,
        ),
        Container(
          height: 60,
          color: Colors.black26,
          child: IconButton(
            icon: Icon(
              Icons.flag,
              color: Colors.white,
              size: 30,
            ),
            onPressed: (){},
          ),
        ),
        SizedBox(
          height: 200,
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: 200,
                color: Colors.blueAccent,
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 5,
              ),
              Container(
                width: 100,
                height: 200,
                color: Colors.blue,
                child: Icon(
                  Icons.print,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
