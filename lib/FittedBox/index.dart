import 'package:flutter/material.dart';

class LcnFittedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      color: Colors.pinkAccent,
      child: FittedBox(
        alignment: Alignment.center,
        fit: BoxFit.none,
        child: Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          child: Image.asset("images/1.jpg"),
        ),
      ),
    );
  }
}

