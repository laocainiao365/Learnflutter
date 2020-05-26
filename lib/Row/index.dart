import 'package:flutter/material.dart';

class LcnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: 100,
            height: 40,
          ),
          Container(
            color: Colors.red,
            width: 140,
            height: 140,
          ),
          Container(
            color: Colors.orange,
            width: 60,
            height: 80,
          ),
        ],
      );
  }
}
