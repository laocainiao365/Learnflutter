# GridView

- GridView
- GridView.builder
- GridView.count
- GridView.custom
- GridView.extent
- 

```dart
GridView({
    Key key,
    Axis scrollDirection = Axis.vertical,//滚动视图滚动的轴
    bool reverse = false,//滚动视图内容是否反转
    ScrollController controller,//一个可用于控制滚动视图滚动到的位置的对象
    bool primary,//是否是与父级关联的主滚动视图
    ScrollPhysics physics,//滚动视图给用户的响应方式
    bool shrinkWrap = false,//应该根据正在查看的内容确定滚动视图的范围
    EdgeInsetsGeometry padding,//滚动视图的padding
    @required this.gridDelegate,//设置滚动视图的属性
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,//视口在可见区域之前和之后有一个区域，用于缓存用户滚动时即将可见的项目。
    List<Widget> children = const <Widget>[],
    int semanticChildCount,
});
```
