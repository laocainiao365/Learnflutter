# Container

Container宽度设置：

width: double.infinity //设置无限宽度，也就是撑满屏幕.

Container自身尺寸的调节分两种情况：

- Container在没有子节点（children）的时候，会试图去变得足够大。除非constraints是unbounded限制，在这种情况下，Container会试图去变得足够小。
- 带子节点的Container，会根据子节点尺寸调节自身尺寸，但是Container构造器中如果包含了width、height以及constraints，则会按照构造器中的参数来进行尺寸的调节。



Container常用属性及设置:
```dart
Container(
  height: 200,
  width: 200,
  child: Text("dsfsdf"),
  padding: EdgeInsets.all(40),
  aligment: Alignment.topCenter//顶部居中对齐
  margin: EdgeInsets.only(top: 50.0, left: 120.0, right: 30.0, bottom: 12), //容器外填充
  constraints: BoxConstraints.tightFor(width: 200.0, height: 150.0), //卡片大小
  decoration: BoxDecoration(//背景装饰
      gradient: RadialGradient( //背景径向渐变
          colors: [Colors.red, Colors.orange],
          center: Alignment.topLeft,
      ),
    	gradient: LinearGradient( //线性渐变
          colors: [
            Colors.deepOrange,
            Colors.black
          ],
          begin: Alignment.topLeft, //设置开始位置
          end: Alignment.bottomRight//设置结束位置
     ),
      boxShadow: [ //设置阴影
        BoxShadow(
            color: Colors.black54,
            offset: Offset(2.0, 2.0), //设置想x，y轴偏移量
            blurRadius: 2.0, //模糊程度
            spreadRadius: 6.0 //阴影的扩大或缩小，负数就会缩小面积
        )
      ],
      color: Colors.blue, //背景色设置
      border: Border.all( //四边边框设置
        color: Colors.red, 
        width: 2.0,
        style: BorderStyle.solid
      ),
    	border: Border( //单独设置边框
      	top: BorderSide(
            width: 40, //宽度
            color: Colors.blue, //颜色
            style: BorderStyle.solid //样式
          ),
          left: BorderSide(
              width: 10,
              color: Colors.blue,
              style: BorderStyle.solid
          ),
          right: BorderSide(
              width: 20,
              color: Colors.blue,
              style: BorderStyle.solid
          ),
          bottom: BorderSide(
              width: 30,
              color: Colors.blue,
              style: BorderStyle.solid
          ),
      ),
    	borderRadius: BorderRadius.circular(20.0), //四边设置圆角,
    	borderRadius: BorderRadius.only( //单独设置圆角
      	topLeft: Radius.circular(20.0),
        bottomLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
        bottomRight: Raduis.circular(10.0)
      ),
    	//设置背景图片
    	image: DecorationImage(
          image: NetworkImage(""),//网络图片
        	image: AssetImage(),//本地图片
          fit: BoxFit.cover, //设置图片裁剪效果
          alignment: Alignment.center,//对齐方式
          colorFilter: ColorFilter.mode( //设置滤镜效果
              Colors.blue.withOpacity(0.8), //滤镜颜色
              BlendMode.dstATop //滤镜效果
          )
      ),
    	shape: BoxShape.circle//设置形状
  ),
  transform: Matrix4.rotationZ(.2), //卡片倾斜变换
  child: Text( //卡片文字
    "5.20", style: TextStyle(color: Colors.white, fontSize: 40.0),
  ),
);
```