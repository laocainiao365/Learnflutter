# Stack Positioned

Stack--分层组件

Positioned--定位组件

Stack可以将子组件进行分层排布，但是没有像css里面z-index来改变排列的顺序，要调整顺序需要调整子组件的位置，
子组件的分层位置，第一个子组件在最下面，最后一个在最上面，是自上而下按顺序排列，想要改变分层的顺序，调整子组件的顺序即可。

Stack源码：
```dart
Stack({
    Key key,
    this.alignment = AlignmentDirectional.topStart,//子组件的对齐方式
    this.textDirection,//子组件中的文本，排列方式，这个属性一般没用，中文、英文都是自左向右读，特殊的比如阿拉伯语言是自右向左的
    this.fit = StackFit.loose,//控制子组件的拉伸，loose默认值是不拉伸，expand尽量拉伸到最大
    this.overflow = Overflow.clip,//控制定位超出部分处理方式，clip默认直接剪掉，visible超出部分显示
    List<Widget> children = const <Widget>[],//子组件
});
```

Positioned在Stack中相对于Stack进行绝对定位，里面的属性top\left\right\bottom可以控制具体的定位的位置，
**这里注意：Positioned里面的width\height设置以后子组件的width\height将不起作用**

Positioned源码：
```dart
const Positioned({
    Key key,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    @required Widget child,
});   
```