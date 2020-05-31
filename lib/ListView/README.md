# stViewListView

生成列表用ListView有三种方式：

> ListView()
> ListView.builder()
> ListView.separated()
> ListView.custom()

ListView()
这种方式生成列表仅限于数量比较少的，因为这种方式有多少个就会生成多少个，没有懒加载，比较消耗性能。

ListView.builder()
有懒加载模式，只渲染显示部分。

ListView.separated()
有懒加载，有两个同时渲染函数，可以在第二个渲染函数添加下划线或者其他组件。

```dart
scrollDirection: Axis.vertical,//设置滑动方向 Axis.horizontal 水平  默认 Axis.vertical 垂直
padding: EdgeInsets.all(10.0), //内间距
reverse: false,//是否倒序显示 默认正序 false  倒序true
primary: true,//false，如果内容不足，则用户无法滚动 而如果[primary]为true，它们总是可以尝试滚动。
itemExtent: 50.0,//确定每一个item的高度 会让item加载更加高效
shrinkWrap: true,//内容适配
itemCount: list.length,//item 数量
physics: new ClampingScrollPhysics(),//滑动类型设置
cacheExtent: 30.0,//cacheExtent  设置预加载的区域  
controller ,//滑动监听
```