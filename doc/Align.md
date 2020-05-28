# Align

主要参数及用法：

```dart
Align(
  alignment: Alignment.topLeft, //对齐方式
  alignment: Alignment(x, y), 	//x，y取值范围-1到1
  widthFactor: 2,	//父组件宽度是子组件的2倍
  heightFactor: 2,
  child: Text('align',
    style: TextStyle(
      backgroundColor: Colors.white
    ),
  ),
)
```