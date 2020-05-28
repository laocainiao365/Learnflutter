# Flexible\Expanded\Spacer

Expanded、Flexible和Spacer都是具有权重属性的组件，可以控制Row、Column、Flex的子控件如何布局的控件。

Expanded继承自Flexible这两个都是填满，剩余空间，Spacer是平分剩余空间。 [具体使用点击此链接去哔哩哔哩观看](https://www.bilibili.com/video/BV1454y1D7tA/)


Flexible源码：
```dart
const Flexible({
    Key key,
    this.flex = 1,//剩余空间平分比例
    this.fit = FlexFit.loose, //是否使用弹性布局，loose默认不使用，tight开启
    @required Widget child,
});
```

Expanded源码：
```dart
const Expanded({ //继承自Flexible
    Key key,
    int flex = 1, //剩余空间平分比例
    @required Widget child,
}) : super(key: key, flex: flex, fit: FlexFit.tight, child: child);
```