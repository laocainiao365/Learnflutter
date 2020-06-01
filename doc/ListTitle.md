# ListTitle

源码：
```dart
const ListTile({
    Key key,
    this.leading,//列表前面的图标或图片
    this.title,//标题
    this.subtitle,//副标题
    this.trailing,//列表最后的图标或图片
    this.isThreeLine = false,//为true是否显示2行，false不换行
    this.dense,//整体都会变得小一点
    this.contentPadding,//内容区域padding
    this.enabled = true,//是否禁止点击
    this.onTap,//点击事件
    this.onLongPress,//长按事件
    this.selected = false,//为true，文本图标颜色会变
});
```

初识滚动：
```dart

// 声明滚动，同时设置默认滚动300
  ScrollController _controller = ScrollController(initialScrollOffset: 300);

  @override
  void initState() {
    super.initState();
    //初始化滚动事件
    _controller.addListener(() {
      //滚动带底部
      if(_controller.offset == _controller.position.maxScrollExtent){
        print("我是有底线的...");
        
      }
      // 滚动到顶部
      if(_controller.offset == _controller.position.minScrollExtent){
        print("到顶了...");
      }
    });
  }
  
  ListView中增加：controller: _controller,
  
  
  //设置回到顶部，animateTo带动画效果，三个参数：
  // 第一个：offset回到的位置,第二个：动画的时间，第三个：动画效果
  _controller.animateTo(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
```