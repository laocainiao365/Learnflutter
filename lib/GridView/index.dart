import 'package:flutter/material.dart';
import 'dart:math';
class LcnGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var srceen = MediaQuery.of(context).size;
    print(srceen);
    return GridView.count(
      crossAxisCount: 4,
      children: List.generate(30, (index) {
        return Container(
          height: 120,
          color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
        );
      }),
    );
  }
}


// builder方式
class LcnGridViewBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 0.6
      ),
      itemBuilder: (context, index){
        return Container(
          height: 150,
          color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
        );
      }
    );
  }
}
