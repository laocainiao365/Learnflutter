# Wrap

Wrap可以为子控件进行水平或者垂直方向布局，且当空间用完时，Wrap会自动换行，也是常说的流式​布局。
**注意一点：Wrap是布局组件，并不能滚动**

```dart
Wrap({
    Key key,
    this.direction = Axis.horizontal, //主轴方向
    this.alignment = WrapAlignment.start,//主轴对齐方式
    this.spacing = 0.0,//主轴子组件间隔
    this.runAlignment = WrapAlignment.start,//整体交叉轴对齐方式
    this.runSpacing = 0.0,//交叉轴间隔
    this.crossAxisAlignment = WrapCrossAlignment.start,//交叉轴对齐方式
    this.textDirection, //主轴为horizontal方向子组件排序方向
    this.verticalDirection = VerticalDirection.down,//主轴为vertical方向子组件排序方向
    List<Widget> children = const <Widget>[],
});
```
