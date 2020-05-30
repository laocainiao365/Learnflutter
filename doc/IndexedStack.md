# IndexedStack

IndexedStack继承自Stack,增加了index属性，可以设置层级关系。
```dart
IndexedStack({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection textDirection,
    StackFit sizing = StackFit.loose,
    this.index = 0, //默认index0
    List<Widget> children = const <Widget>[],
}); 
```
