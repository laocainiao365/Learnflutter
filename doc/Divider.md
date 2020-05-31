# Divider VerticalDivider Icon ImageIcon IconButton

Divider源码及注解: VerticalDivider与Divider一样就不在注解。
```dart
const Divider({
    Key key,
    this.height,  //组件高度
    this.thickness,//线的高度
    this.indent,//线前面的空白区域
    this.endIndent,//线后面的空白区域
    this.color,//线的颜色
});
```

Icon源码及注解：

到官网查看所有图标：https://api.flutter.dev/flutter/material/Icons-class.html
```dart
const Icon(
this.icon, //第一个参数是必传参数，传入一个图标如：Icons.print 
    {
      Key key,
      this.size, //图标的大小
      this.color,//图标的颜色
      this.semanticLabel,//图标的说明，这个一般不用写
      this.textDirection,//图标的排列顺序这个一般用顶层的组件来决定，这个一般不用
    }
)
```

ImageIcon源码及注解：
```dart
const ImageIcon(    
    this.image, //这里传入是个ImageProvider类型，不是这种Image.asset，需要使用AssetImage、MemoryImage等。
    {
    Key key,
    this.size,
    this.color,
    this.semanticLabel,
    }
);
```

IconButton有两个必传参数：OnPressed,icon,其余与属性和其他按钮组件一样，
icon属性需要传入Icon(Icons.print)这种形式。