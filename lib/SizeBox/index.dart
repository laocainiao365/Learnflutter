import 'package:flutter/material.dart';

class LcnSizebox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        SizedBox(width: 10),
        Container(
          width: 200,
          height: 100,
          color: Colors.orange,
        ),
      ],
    );
  }
}
