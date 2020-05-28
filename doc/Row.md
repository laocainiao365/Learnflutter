# Row

Row组件是布局组件，只能在一屏幕内布局，不能超出屏幕滚动，如果想滚动请使用滚动组件，比如：ListView等滚动组件来布局。

Row构造方法：

```dart
Row({
  Key key,
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start, 
  MainAxisSize mainAxisSize = MainAxisSize.max,
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  TextDirection textDirection,
  VerticalDirection verticalDirection = VerticalDirection.down,
  TextBaseline textBaseline,
  List<Widget> children = const <Widget>[],
}) 
```

使用案例：

```dart
Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//主轴上的对齐方式
      mainAxisSize: MainAxisSize.min,//主轴上尽量占据小的空间，默认max占据尽量大的空间
      textDirection: TextDirection.rtl,//子元素的排列方式，从左往右或者从右往左排布
      crossAxisAlignment: CrossAxisAlignment.baseline,//交叉轴对齐方式
      textBaseline: TextBaseline.alphabetic,//设置文本的基线
      verticalDirection: VerticalDirection.down,//子组件排布方向，这个在row无效，在Column中有效
      children: <Widget>[ //子组件，可以多个
        Container(
          color: Colors.blue,
          width: 100,
          height: 200,
          child: Text("sdfkl",style: TextStyle(fontSize: 30,color: Colors.white),),
        ),
        Container(
          color: Colors.red,
          width: 140,
          height: 140,
          child: Text("laocaoniao",style: TextStyle(fontSize: 20),),
        )
      ],
    );
```



参数详解：

### MainAxisAlignment mainAxisAlignment

子控件对齐方式，当子控件高度不一样时，如何被放置在中心轴，而MainAxisAlignment 决定了子控件间的间隔

```java
enum MainAxisAlignment {
  start,  // 尽可能靠近主轴的起点
  end, // 尽可能靠近主轴末端的地方
  center, // 尽可能近主轴中间的地方
  spaceBetween, // 在子控件中间均匀地放置自由空间，第一个前和最后一个后无空间
  spaceAround,  // 在子控件中间均匀地放置自由空间，同时也放置一半空间在第一个前和最后一个控件后。
  spaceEvenly,  // 在第一个控件和最后一个控件之前和之后均匀地放置自由空间
}
```

### MainAxisSize mainAxisSize

子控件如何放置，枚举对象（默认值为max）

```java
enum MainAxisSize {
  min, // 控件尽可能小（取此值时，上面的MainAxisAlignment 无效）
  max, //  控件尽可能大
}
```

### CrossAxisAlignment crossAxisAlignment

子控件对齐方式，当子控件高度不一样时，如何被放置在中心轴，而MainAxisAlignment 决定了子控件间的间隔

```java
enum CrossAxisAlignment {
  start,  // 子控件都父控件的项部
  end, // 子控件都在父控件的底部
  center, // 子控件居父控件的中部
  stretch, // 子控件填满横轴，（ 使用此值时，子控件一定要设置width）
  baseline, // 当子控件是Text时有效，并要设置下面的TextBaseLine属性
}
```

### TextBaseline textBaseline

 对齐文本的水平线

```java
enum TextBaseline {
  alphabetic, // 用于对齐字母字符的字形底部的水平线
  ideographic,  // 用于对齐表意文字的水平线
}
```

### TextDirection textDirection（VerticalDirection verticalDirection)

子控件排序方向 （一般不用设置，除非想反转子控件排序）

```java
enum VerticalDirection {
  up,  //  子控件从下到上排序
  down, //  子控件从上到下排序
}
enum TextDirection {
  rtl, // 子控件从右到左排序
  ltr, // 子控件从左到右排序
}
```
