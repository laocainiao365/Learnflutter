# flutter状态管理-Provider
---

#### Provider在全局runApp()进行包裹，几种方式
```dart
//这种方式只能共享状态，不能改变共享的状态
Provider(
  create: (_) => Counter(),
  child: MyApp()
)

//可以共享、修改状态
ChangeNotifierProvider(
  create: () => Counter(),
  child: MyApp()
)

//多个状态共享
MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (context) => Counter()),
    ...
  ],
  child: MyApp(),
),
```
#### 在组件中使用
```dart
**这两种方式都是在build方法中去获取**
这两种方式使用都非常方便，但是有个缺点就是**每次当状态更新的时候都会重新执行所在的build方法**

Widget build(BuildContext context) {
//<Counter>：获取那个状态中数据
final count = Provider.of<Counter>(context).count;
---------------------------------------------
final count = context.watch<Counter>().count;
...
}
```