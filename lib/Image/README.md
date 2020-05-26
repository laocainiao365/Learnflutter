# Image用法

Image.network	网络图片

Image.assets	本地图片

本地图片配置：

第一步：去项目根目录找到pubspec.yaml文件

在assets位置把注释去掉。

第二步：在根目录新建images文件夹用于配置 - images图片存放地址，当然你也可以放到其他位置，路径配置对就可以，这里需要注意一点就是assets：这个去掉注释后一定和#号对齐，保持格式否则不生效

```dart
 assets:
   - images/
  #  - images/a_dot_ham.jpeg

```



### Image属性注解

```dart
Image.network(
	"http://xxxx.jpeg",
  aligment: Aligment.topLeft,
  fit: BoxFit.cover	//充满容器，拉伸不变形，多余的直接剪掉
  fit: BoxFit.contain	//等比拉伸，直到一边填充满
  fit: BoxFit.fill //完全填充，宽高比可能会变
  fit: BoxFit.fitWidth //等比拉伸，宽填充满
  fit: BoxFit.Height	//等比拉伸，高填充满
  fit: BoxFit.scaleDown //效果和contain差不多，但是此属性不允许显示超过原图片大小，可缩小不可放大
  repeat: ImageRepeat.repeat  //平铺 ImageRepeat.repeatX  x轴平铺
  color: Colors.green, //设置滤镜叠加颜色
	colorBlendMode: BlendMode.dst,//设置滤镜效果
)
```