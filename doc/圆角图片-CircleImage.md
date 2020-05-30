# 圆角图片

圆角图片或头像 ClipOval、CircleAvatar、Container

ClipOval：--最简单，图片必须为正方形或者圆形，图片上不能有文字。
```dart
Center(
  child: ClipOval(
    child: Image.network(
      "http://b-ssl.duitang.com/uploads/item/201707/10/20170710210234_y3Kf5.jpeg",
      width: 200,
      height: 200,
    ),
  ),
),
```

CircleAvatar：--适中，图片必须为正方形或者圆形（可以使用矩形图片但是图片位置没法调整），图片上能有文字。

```dart
Center(
  child: CircleAvatar(
    backgroundImage: NetworkImage(
      "http://b-ssl.duitang.com/uploads/item/201509/03/20150903160121_tMLZn.jpeg",
    ),
    radius: 100,
    child: Container(
      alignment: Alignment(0,0.7),
      child: Text("CAINIAO",style: TextStyle(fontSize: 24)),
    )
  ),
),
```

Container:--最麻烦，功能最强大，不关心图片形状，图片上可以设置文字，同时可以设置边框，图片混合模式等。
```dart
Center(
  child: Container(
    width: 200,
    height: 200,
    alignment: Alignment(0,0.7),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100), //设置圆角
        border: Border.all( //设置边框
          width: 10,
          color: Colors.orange[200]
        ),
        image: DecorationImage( //设置图片
            image: NetworkImage(
              "http://img3.cache.netease.com/photo/0003/2016-12-12/C833NHCG00AJ0003.jpg",
              scale: 0.5,
            ),
            fit: BoxFit.cover,
            alignment: Alignment(0,-1),
            colorFilter: ColorFilter.mode(Colors.blue, BlendMode.color) //这只图片混合模式
         ),
    ),
    child: Text("CAINIAO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
  ),
),
```
