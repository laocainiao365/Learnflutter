# SizedBox

SizedBox是具有宽高的容器组件，直接指定具体的宽高。
```
SizedBox(
  height: 60,
  width: 200,
  child: RaisedButton(
    child: Text('this is SizedBox'),
  ),
)
```

宽度和高度可以给无限
```
SizedBox(
  height: double.infinity,
  width: double.infinity,
  ...
)
```

虽然设置了无限大，子控件是否会无限长呢？不会，  
子控件依然会受到父组件的约束，会扩展到父组件的尺寸，还有一个便捷的方式设置此方式：
```
SizedBox.expand(
  child: RaisedButton(
    child: Text('this is SizedBox'),
  ),
)
```

SizedBox可以没有子组件，但仍然会占用空间，所以SizedBox非常适合控制2个组件之间的空隙，用法如下：
```
Column(
  children: <Widget>[
    Container(height: 30,),
    SizedBox(height: 10,),
    Container(height: 30,),
  ],
)
```
