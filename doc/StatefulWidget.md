# StatelessWidgete

主要用于展示和用户没有交互的UI

# StatefulWidget

主要用于和用户有交互的UI


StatefulWidget生命周期：
```dart
import 'package:flutter/material.dart';

class LaoCaiNiao extends StatefulWidget{

  LaoCaiNiao(){
    print("我是fulWidget--Constructor");
  }

  @override
  State<StatefulWidget> createState() {
    print("我是fulWidget-CreateState");
    return LaoCaiNiaoState();
  }
}

class LaoCaiNiaoState extends State<LaoCaiNiao>{

  List<int> arr = [1,2,3];

  LaoCaiNiaoState(){
    print("我是State--Constructor");
  }

  //这是创建widget时候调用的，除构造方法外的第一个方法
  ///在这个方法中通常会做一些初始化工作，监听器的初始化等
  @override
  void initState() {
    print("我是InitState");
    super.initState();
  }

  ///当依赖的State对象改变时会调用
  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }



  ///这是一个必须实现的方法，在这里实现你要呈现的内容
  ///它会在 didChangeDependencies 方法之后立即调用；
  ///另外当调用 setState() 后也会再次调用该build方法；
  @override
  Widget build(BuildContext context) {
    print("build");
    return Column(

      children: <Widget>[
        Text("${arr}", style: TextStyle(fontSize: 60),),
        Text("${arr.length}", style: TextStyle(fontSize: 60),),
        RaisedButton(
          onPressed: (){
            setState(() {
              arr.add(arr[0]++);
            });
          },
          child: Text("加1"),
        )
      ],
    );
  }


  ///这是一个不常用到的生命周期方法，当父组件需要重新绘制时才会调用
  @override
  void didUpdateWidget(LaoCaiNiao oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }


  ///很少使用，在组件被移除时候调用，在dispose之前调用
  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  ///常用，组件被销毁时候调用；
  ///通常在该方法中执行一些资源的释放工作，比如监听器的移除，channel的销毁等；
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }
}

```