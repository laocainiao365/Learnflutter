import 'package:flutter/material.dart';
import 'dart:math';
class LcnListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.custom(
      physics: BouncingScrollPhysics(),
      childrenDelegate: SliverChildBuilderDelegate(
          (context,i){
            return Container(
              width: double.infinity,
              height: 80,
              color: Color.fromARGB(255, Random().nextInt(255),Random().nextInt(255),Random().nextInt(255)),
              child: Text("$i"),
            );
          },
          childCount: 30
      )
    );
  }
}

// ListView方式
class LcnListView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      physics: BouncingScrollPhysics(),
      children: List.generate(40, (index) {
        return Container(
          width: double.infinity,
          height: 60,
          color: Color.fromARGB(255, Random().nextInt(255),Random().nextInt(255),Random().nextInt(255)),
          child: Text("$index"),
        );
      }),
    );
  }
}

//ListViewBuilder
class LcnListViewBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder:(context, index){
          return Container(
            width: double.infinity,
            height: 60,
            color: Color.fromARGB(255, Random().nextInt(255),Random().nextInt(255),Random().nextInt(255)),
            child: Text("$index"),
          );
        },
      itemCount: 40,
    );
  }
}

//ListViewseparated
class LcnListViewseparated extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (context, index){
          return Container(
            width: double.infinity,
            height: 60,
            color: Color.fromARGB(255, Random().nextInt(255),Random().nextInt(255),Random().nextInt(255)),
            child: Text("$index"),
          );
        },
        separatorBuilder: (context, index){
          return Divider(height: 5);
        },
        itemCount: 50
    );
  }
}