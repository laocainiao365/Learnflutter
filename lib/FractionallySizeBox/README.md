# FractionallySizedBox

适用于占父组件百分比的情况。

使用FractionallySizedBox包裹子组件，设置widthFactor宽度系数或者heightFactor高度系数，  
系数值的范围是0-1，0.7表示占父组件的70%

**注意：FractionallySizedBox的子组件的，宽度和高度是都不起作用的**

```dart
const FractionallySizedBox({
    Key key,
    this.alignment = Alignment.center,
    this.widthFactor,//宽度占比
    this.heightFactor,//高度占比
    Widget child,
});
```
