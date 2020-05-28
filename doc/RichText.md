# RichText和Text.rich()

RichText和Text.rich的作用一样都可以实现文本的定制，而且它们的属性和Text一样。

Text.rich()是调用的Text静态方法


```dart
RichText({
    Key key,
    @required this.text,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.textScaleFactor = 1.0,
    this.maxLines,
    this.locale,
    this.strutStyle,
    this.textWidthBasis = TextWidthBasis.parent,
    this.textHeightBehavior,
})
```

RichText注解如下：
```dart
RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text:"文本",
        textAlign: TextAlign.end,	//对齐方式
        textDirection: TextDirection.ltr//文本方向(ltr 从左至右，rtl 从右至 左)
        overflow: TextOverflow.clip,//文字超出屏幕之后的处理方式(clip 裁剪，fade 渐隐，ellipsis 省略号)
        maxLines: 1,//文字显示最大行数
        style: TextStyle(
            decoration: TextDecoration.lineThrough //文字装饰线(none 没有线，lineThrough 删 除线，overline 上划线，underline 下划线)
            decorationColor: Colors.amber, //文字装饰线颜色
            decorationStyle: TextDecorationStyle.dashed //文字装饰线风格([dashed,dotted]虚线， double 两根线，solid 一根实线，wavy 波浪 线)
            wordSpacing: 2//单词间隙(如果是负值，会让单词变得更紧 凑
            letterSpacing: xx//字母间隙(如果是负值，会让字母变得更紧 凑)
            fontStyle: xx//文字样式(italic 斜体，normal 正常体)
            fontSize: 23//文字大小
            color: Colors.red //文字颜色
            fontWeight: FontWeight.blod //字体粗细(bold 粗体，normal 正常体)
        )
    )
    ]
  )
)


```
