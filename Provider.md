# flutter状态管理
---

flutter中的状态管理推荐两种方式，都是官方提供的

- InheritedWidget - 就是一个组件
- Provider
 
Provider在InheritedWidget基础上实现的，`InheritedWidget`类似于react中hook中的useContext，`Provider`类似于redux。

本质上都是将共享状态的组件在顶层上进行一层包裹，在顶层中存放和修改数据，达到其子组件共享状态的目的。

#### InheritedWidget方式
首先创建一个继承自InheritedWidget的组件，并且声明状态，用来做顶层组件。
```dart
class LcnCounter extends InheritedWidget{

  final int count;//要共享的状态
  
  //传入的子组件和状态，把子组件传入父组件
  LcnCounter({Widget child, this.count}):super(child: child);
  
  static LcnCounter of(BuildContext context){
    //顺着element树向上寻找最近的，共享状态的element
    return context.dependOnInheritedWidgetOfExactType();
  }
  
  //状态改变后，是否要通知子组件中的生命周期函数didChangeDependencies
  @override
  bool updateShouldNotify(LcnCounter oldWidget) {
    //判断上次的值是否和现在的相同,相同则不通知，不同则通知
    return oldWidget.count != count;
  }
}
```

在组件中使用状态：
```dart
//必须在LcnCounter范围内使用
LcnCounter(
  count: 20,
  child: Column(
    children: [
      LcnText(), 
      LcnText(),
    ]
  )
);

//要使用状态的子组件
class LcnText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //获取共享的状态
    int count = LcnCounter.of(context).count;
    return Text("$count");
  }
}
```

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

#### 使用Consumer或者Selector
```dart
Consumer(
  builder(context, val, child){
    return Text("$val.count");
  } 
)
```


