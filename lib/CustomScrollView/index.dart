import 'package:flutter/material.dart';
import 'dart:math';

class LcnCustomScrollView extends StatefulWidget {
  @override
  _LcnCustomScrollViewState createState() => _LcnCustomScrollViewState();
}

class _LcnCustomScrollViewState extends State<LcnCustomScrollView> {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: <Widget>[
//        SliverAppBar(
//          title: Text("老菜鸟flutter"),
//          centerTitle: true,
//          leading: Icon(Icons.arrow_back),
//          floating:true,
//          pinned: true,
//          snap: true,
//          expandedHeight: 300,
//          flexibleSpace: FlexibleSpaceBar(
//            background: Image.asset(
//              "images/4.jpeg",
//              fit: BoxFit.cover,
//            ),
//          ),
//        ),
        SliverPersistentHeader( //利用自定义的SliverPersistentHeaderDelegate
          delegate: LcnDelegate(//下面自定义特效果，通过继承SliverPersistentHeaderDelegate
            maxheight: 300,
            minheight: 40,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://img9.doubanio.com/view/subject/m/public/s3822225.jpg"),
                  fit:BoxFit.cover
                )
              ),
            )
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(
                  width: double.infinity,
                  height: 80,
                  color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),Random().nextInt(255)),
                );
              },
            childCount: 10,
          )
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 80,
            color: Colors.white,
            child: Center(
              child: Text("网格滚动的title"),
            ),
          ),
        ),
        SliverGrid.count(
          crossAxisCount: 3,
          children: List.generate(12, (index) {
            return Container(
              height: 150,
              color: Colors.primaries[index],
            );
          }),
        )
      ],
    );
  }
}


class LcnDelegate extends SliverPersistentHeaderDelegate{

  final double maxheight;
  final double minheight;
  final Container child;

  LcnDelegate({@required this.maxheight, this.minheight,this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    //shrinkOffset这个属性值，就是头部滚动的偏移量
    print(shrinkOffset);
    return Container(
      width: double.infinity,
      height: this.maxExtent,
      color: Colors.black26,
      child: this.child,
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  double get maxExtent => this.maxheight;

  @override
  double get minExtent => this.minheight;
}



