## TabBar
源码：
```dart
    const TabBar({
    Key key,
    @required this.tabs,//显示的标签内容，一般使用Tab对象,也可以是其他的Widget
    this.controller,//TabController对象
    this.isScrollable = false,//是否可滚动
    this.indicatorColor,//指示器颜色
    this.indicatorWeight = 2.0,//指示器高度
    this.indicatorPadding = EdgeInsets.zero,//底部指示器的Padding
    this.indicator,//指示器decoration，例如边框等
    this.indicatorSize,//指示器大小计算方式，TabBarIndicatorSize.label跟文字等宽,TabBarIndicatorSize.tab跟每个tab等宽
    this.labelColor,//选中label颜色
    this.labelStyle,//选中label的Style
    this.labelPadding,//每个label的padding值
    this.unselectedLabelColor,//未选中label颜色
    this.unselectedLabelStyle,//未选中label的Style
    }) : assert(tabs != null),
    assert(isScrollable != null),
    assert(indicator != null || (indicatorWeight != null && indicatorWeight > 0.0)),
    assert(indicator != null || (indicatorPadding != null)),
    super(key: key);
 
```
写法：
```dart
controller: controller,//可以和TabBarView使用同一个TabController
tabs: tabs,
isScrollable: true,
indicatorColor: Color(0xffff0000),
indicatorWeight: 1,
indicatorSize: TabBarIndicatorSize.tab,
indicatorPadding: EdgeInsets.only(bottom: 10.0),
labelPadding: EdgeInsets.only(left: 20),
labelColor: Color(0xff333333),
labelStyle: TextStyle( tabs: tabs,
isScrollable: true,
indicatorColor: Color(0xffff0000),
indicatorWeight: 1,
indicatorSize: TabBarIndicatorSize.tab,
indicatorPadding: EdgeInsets.only(bottom: 10.0),
labelPadding: EdgeInsets.only(left: 20),
labelColor: Color(0xff333333),
labelStyle: TextStyle(
  fontSize: 15.0,
),
unselectedLabelColor: Color(0xffffffff),
unselectedLabelStyle: TextStyle(
  fontSize: 12.0,
),
fontSize: 15.0,
),
unselectedLabelColor: Color(0xffffffff),
    unselectedLabelStyle: TextStyle(
    fontSize: 12.0,
),
```