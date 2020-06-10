# PageView

PageView和PageView.builder这两个中方式，


PageView这种没有懒加载，PageView.builder这种有懒加载



源码：
```dart
PageView({
    Key key,
    this.scrollDirection = Axis.horizontal, //滚动方向
    this.reverse = false,//子组件排列顺序反转
    PageController controller,//子组件的一些设置，比如屏占比，默认显示第几个子组件等
    this.physics,//滚动模式
    this.pageSnapping = true,//滚动效果，是否滑动超过半屏
    this.onPageChanged,//滑动改变显示以后触发的事件
    List<Widget> children = const <Widget>[],//子组件
    this.dragStartBehavior = DragStartBehavior.start,
    this.allowImplicitScrolling = false,
});


PageController({
   this.initialPage = 0, //默认显示第一个子组件
   this.keepPage = true,//是否缓存当前页
   this.viewportFraction = 1.0,//子组件在屏幕占比
}); 

```