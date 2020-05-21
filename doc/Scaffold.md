# Scaffold
```dart
const Scaffold({
  Key key,
  this.appBar, // 标题栏
  this.body,  // 用于显示当前界面主要内容的Widget
  this.floatingActionButton, // 一个悬浮在body上的按钮，默认显示在右下角
  this.floatingActionButtonLocation, // 用于设置floatingActionButton显示的位置
  this.floatingActionButtonAnimator, // floatingActionButton移动到一个新的位置时的动画
  this.persistentFooterButtons, // 多状态按钮
  this.drawer, // 左侧的抽屉菜单
  this.endDrawer, //  右'侧的抽屉菜单
  this.bottomNavigationBar,// 底部导航栏。
  this.bottomSheet, // 显示在底部的工具栏
  this.backgroundColor,// 内容的背景颜色
  this.resizeToAvoidBottomPadding = true, // 控制界面内容 body 是否重新布局来避免底部被覆盖，比如当键盘显示的时候，重新布局避免被键盘盖住内容。
  this.primary = true,// Scaffold是否显示在页面的顶部
}) 
```
