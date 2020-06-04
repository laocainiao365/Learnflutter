# CustomScrollView

> CustomScrollView是Flutter提供的可以用来自定义滚动效果的组件。

```dart
SliverList //类似于我们之前使用过的ListView；
SliverFixedExtentList//类似于SliverList只是可以设置滚动的高度；
SliverGrid//类似于我们之前使用过的GridView；
SliverPadding//设置Sliver的内边距，因为可能要单独给Sliver设置内边距；
SliverAppBar//添加一个AppBar，通常用来作为CustomScrollView的HeaderView；
SliverSafeArea //设置内容显示在安全区域（比如不让齐刘海挡住我们的内容）
SliverToBoxAdapter //普通的组件放到slivers要用这个组件包裹
```

SliverAppBar属性：
```dart
leading	//左侧控件，通常情况下为"返回"图标
title	//标题，通常为Text控件
actions	//右侧控件
flexibleSpace//	展开和折叠区域
bottom	//底部控件
elevation//	阴影
backgroundColor//	背景颜色
expandedHeight	//展开区域的高度
floating	//设置为true时，向下滑动时，即使当前CustomScrollView不在顶部，SliverAppBar也会跟着一起向下出现
pinned	//设置为true时，当SliverAppBar内容滑出屏幕时，将始终渲染一个固定在顶部的收起状态
snap	//设置为true时，当手指放开时，SliverAppBar会根据当前的位置进行调整，始终保持展开或收起的状态，此效果在floating=true时生效
```

SliverAppBar的效果就是基于SliverPersistenHeader实现的，SliverPersistenHeader最重要的属性是SliverPersistentHeaderDelegate,
SliverPersistentHeaderDelegate是一个抽象类，其中有4个方法：
- minExtent: 收起状态下组件的高度
- maxExtent: 展开状态下组件的高度
- shouldRebuild: 类似于react中的ShouldComponentUpdate;
- build: 构建渲染的内容
```dart
class StackPading extends SliverPersistentHeaderDelegate{

  final double maxheight;
  final double minheight;
  final Container child;

  StackPading({@required this.maxheight, this.minheight});
  
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
```