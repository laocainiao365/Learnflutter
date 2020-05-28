# AppBar
```dart
AppBar({
    Key key,
    this.leading,//左侧显示的图标 通常首页显示的为应用logo 在其他页面为返回按钮
    this.automaticallyImplyLeading = true,//配合leading使用
    this.title,//标题文本
    this.actions,//右侧item
    this.flexibleSpace,//显示在 AppBar 下方的控件，高度和 AppBar 高度一样，
    // 可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用
    this.bottom,//一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏
    this.elevation,//控件的 z 坐标顺序，默认值 4，对于可滚动的 SliverAppBar，当 SliverAppBar 和内容同级的时候，该值为 0， 
    // 当内容滚动 SliverAppBar 变为 Toolbar 的时候，修改 elevation 的值。
    this.shape,
    this.backgroundColor,//AppBar背景色
    this.brightness,//AppBar亮度 有黑白两种主题
    this.iconTheme,//AppBar上图标的样式
    this.actionsIconTheme,//AppBar上actions图标的样式
    this.textTheme,//AppBar上文本样式
    this.primary = true,
    this.centerTitle,//标题是否居中
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,//标题与其他控件的空隙
    this.toolbarOpacity = 1.0,//AppBar tool区域透明度
    this.bottomOpacity = 1.0,//bottom区域透明度
  })
```